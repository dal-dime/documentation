---
title: Task System
layout: post
author: Alexandru Ianta
---
The DIME task system guides users through tedious monolothic tasks by breaking them up into smaller pieces that are easier to complete on the go.

## Abstractions

The task system is composed of three key abstractions: 

1. Task(s)
2. State(s)
3. Widget(s)
4. Taskflow(s)

Tasks can have two or more states. Some states may be widgets. System events triggered through user interaction or by other internal systems can cause tasks to transition from one state to another. These transitions need not be linear. What transition takes place is decided by the information the event provides to the task system. Widgets represent states of a task where user interaction through the moble or desktop site can trigger a transition to another state. Taskflows are paths through the state graph of one or more tasks which are taken through user and system interactions.

{% include image.html url='/images/DIME_Task-System-Abstractions.png' description='' %}

## Tasks
All tasks contain the following fields:

| Field | Description | 
|-|-|
|Name | A UI friendly name for the task. |
|Id | A UUID of the form 24d5dd63-8bad-45d6-8e8f-071c7773100d. |
|Priority| A numeric value that can be used to decide the order in which a task appears. |
|State| The current state of the task. |
|Target| The user this task is targeting. IE: Who should this task be completed by? |
|Date Created| The date the task was created. |
|Date Completed| The date the task was completed.|
|Date Rejected| The date the task was rejected. |
|History| A list of states this task has transitioned through in chronological order. |
|Associated Help Article| The suffix of the documentation page for the task. |

## States
All states contain the following fields:

| Field | Description |
|-|-|
|Name| The name of the state. |
|Entered| The date the state was entered. |
|Exited | The date the state was exited. |

States are where the bulk of the taskflow logic goes. They contain whatever data is necessary to transition into other states. 

For example, in the CommunityAttributeMatchingGoal task, the 'Unmatched' state contains a map of definition ids to AttributeMatchingTask ids. These ids allow us to show a user what standard definitions others have proposed for their dataset's variables. It is from this map that the "Unmatched" state can transition into the 'Matched' state when the user selects one of the suggested definitions.

When a task is updated, its current state is passed whatever data was included with the update request. The state then examines the update data, its own data, and the parent task's data to determine if a transition is possible and if so which one. The end result of this process culminates in an error or in a new task state which replaces the existing state as the new state of the parent task.

### Special States

There are two special states in the task system: completed states, and the rejected state. 

Any state can be a completed state. These states are used to mark final states in a task flow. This differentiation can be useful in collecting telemetry and presenting a user with tasksflows they have completed.

A 'global' rejected state is entered by any task which a user dismisses. This differentiation is again useful for collecting telemetry on a user's engagement with the task system and presenting such information to the user.


## Widgets
Tasks and states contain a lot of information that is important for internal DIME systems, but *should not* be made availalbe to the front-end applications. Widgets are simple wrappers around states which are user facing in some way. Their purpose is to expose only the data that *should* be returned to the front-end. 

When the front-end asks for a user's next task, only tasks which are currently in a widget state are considered. Then when one is chosen, only the data exposed by the widget is returned.

## Taskflows

While the other abstractions have some manifestation in the source code of DIME's task system, taskflows do not. The closest representation of a taskflow in the task system is the task histroy. Taskflows are moreso a concept which arises from the implementation of the other abstractions. A taskflow is a path along a graph where states are the verticies and transitions and side effects are the edges. Designing a task on the DIME platform means creating a taskflow that takes users through the steps of a data integration task. 

A taskflow is illustrated below through the highlighted blue transitions:

{% include image.html url='/images/DIME_Task-System-Taskflow.png' description='' %}

Taskflows can interweave in arbitrary ways. One taskflow's side effects may trigger transitions in a related taskflow. Certain taskflows may not proceed further until a related taskflow reaches some state. 

Great care must be take to consider all sorts of possible taskflows that arise from the addition of a transition between two states. For example, we wish to allow users to prevent some of their dataset's variables from being matched by the community. We can do this by adding a 'Closed' state to the CommunityAttributeMatchingGoal task.

IMAGE PLACEHOLDER

But in doing so we must answer questions like:

* What happens to suggestions that have already been made when we transition into the 'Closed' state?
* What happens if a user active on the platform has already loaded a corresponding AttributeMatchTask and is in the process of completing it? 

This is a key area for further development. 

Tools for the development and management of taskflows are key to constructing effective user experiences on the platform. 

Additionally, taskflows should be encapsulated away from the task system. Currently, all DIME tasks are hardcoded into the task system's binaries. A more mature version of the platform could have tasks, states, and widgets loaded in through data and script files, allowing *Task Designers* to develop, test and deploy taskflows on the platform independently of the platform's development team. 