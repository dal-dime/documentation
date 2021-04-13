---
title: First Document Task
layout: post
author: Alexandru Ianta
---

The first document task is the first task a user sees upon registering on the platform. It is meant to welcome the user to the platform and provide some general information. The primary goal of the task is to introduce the user to the task system's features (filtering, accessing help, task skipping, task rejection, and task submission).

As we expect data uploading to happen primarily on desktop, the desktop version of this task prompts the user to upload a file in order to complete the task. 
 
On mobile, the user completes the task simply by tapping the task text and hitting submit.

With a priority of 200, this task appears ahead of other tasks a user might have available. This ensures that mobile users who just signed up get get a brief tutorial before getting hit with any Attribute Matching Tasks that may be circulating on the platform.

As far as task design goes, this task is a bit of an anomoly. In general we've aimed to make tasks equivalent accross desktop and mobile experiences. Here, the completion of the First Document Task on desktop ends with a document upload that doesn't occur on mobile, making the task name somewhat of a misnomer. 

### Assignment Conditions
* The user does not have this task.
* The user has no Community Attribute Matching Tasks.


### Taskflow Diagram

{% include image.html url='/images/DIME_First_Document_Taskflow.png' description='The first document taskflow. The global rejection state is ommited to keep the diagram clear.'%}


### Technical Specifications

|-|-|
|Name | First Document Task |
|Priority| 200 | 
|Help Article Stub| first-task |
|Desktop|yes|
|Mobile|yes|






### Screenshots

{% include image.html url='/images/first-document-task-desktop.png' description='First Document Task as it appears when accessing the DIME web app on Desktop.' %}

{% include image.html url='/images/first-document-task-mobile.png' description='First Document Task as it appears when accessing the DIME web app on Mobile.' %}