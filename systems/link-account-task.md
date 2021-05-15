---
title: Link Account Task
layout: post
author: Alexandru Ianta
---

The link account task is assigened to a user by a [publish task]({% link systems/publish-task.md %}) that detects the user has not yet linked the appropriate account to DIME. This assignment only occurs if a link account task for this user and publishing channel (ex: Figshare, Dataverse) doesn't already exist.

Link account tasks display the appropriate 'connection' UI so users can handle account linking right from the task.

### Assignment Coditions
* User does not have the appropriate publishing channel account linked to DIME.
* User does not already have a link account task for this publishing channel.

### Taskflow Diagram
{% include image.html url='/images/DIME_Link_Account_Taskflow.png' description='The Link Account taskflow. The global rejection state is omitted to keep the diagram clear.' %}


### Technical Specifications

|-|-|
|Name| Link Account Task|
|Priority | 100 |
|Help Article Stub | link-account |
|Desktop| yes |
|Mobile | no |

# Screenshots

{% include image.html url='/images/link-task-desktop.png' description='The Link Account Task as it appears on the DIME web app on desktop. In this task the user is prompted to link their figshare account. The triggering publish task must have been attempting to guide the user through the process of publishing a dataset on figshare.' %}

{% include image.html url='/images/link-task-desktop-2.png' description='Another example of the Link Account Task on desktop. This task asks the user to establish the Dataverse connection they\'d like to use when publishing their datasets.' %}