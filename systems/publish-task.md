---
title: Publish Task
layout: post
author: Alexandru Ianta
---

The publish task is created as a side effect of the user selecting 'yes' on the [keyset task]({% link systems/keyset-task.md %}) widget. Each publish task is associated with a dataset and a publishing channel. These are going to be the same as those in the triggering keyset task. 

The publish task is unique at the time of writing because it is the only task on the platform which the system is responsible for transitioning automatically. Every time a task is completed or a new task is fetched, the task system looks through the user's tasks for any publish tasks in the 'active' state. If it finds such a task, it will attempt to transition the task into the 'ready' state. This transition is conditional on the user having linked the relevant publishing channel account to DIME and having filled in all of the required metadata fields. 

If both of those conditions are met, the publish task transitions into the 'ready' state. The 'ready' state is a widget prompting the user to upload the corresponding dataset to the publishing channel. If the user clicks upload, the integrated document, is uploaded to the channel with the required metadata fields. 

If the user has not yet linked the relevant publishing channel account, and a [Link Account Task]({% link systems/link-account-task.md %}) for that publishing channel doesn't already exist for this user, then one is created for them. 

This is the final task in a series aimed at breaking down every step of the annotation and publishing process into DIME tasks.   

### Assignment Conditions
* Transition into the KeysetAttached state by a user's [keyset task]({% link systems/keyset-task.md %}).

### Taskflow Diagram
{% include image.html url='/images/DIME_Publish_Taskflow.png' description='The publish taskflow. The global rejection state is omitted to keep the diagram clear. ' %}

### Technical Specifications

|-|-|
|Name| Publish Task |
|Priority | 100 |
|Help Article Stub | publish-task | 
|Desktop | yes |
|Mobile | no |

### Screenshots

{% include image.html url='/images/publish-task-desktop.png' description='A publish task in the \'Ready\' state for a document called \'halifax.nc\' to be published to Figshare.' %}