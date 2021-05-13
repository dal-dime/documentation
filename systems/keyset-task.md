---
title: Keyset Task
layout: post
author: Alexandru Ianta
---

The keyset task appears once a new dataset is uploaded to the platform. Each keyset task has a corresponding dataset and publishing chanel (Ex: Figshare, Dataverse) It prompts the user to specify if a they intend to publish the uploaded dataset to a particular respository. A keyset task is created for every supported respository. At the time of writing, Figshare and Dataverse were supported. Hence two keyset tasks would be created upon an upload. One asking the user if they intend to publish the dataset to Figshare, and one asking the user if they intend to publish the dataset to Dataverse.

The purpose of this task is trigger an appropriate set of subsequent tasks such that the user is guided through the process of publishing the the specified repository. 

When a user selects 'yes', the required metadata fields are added to the entity corresponding with the uploaded dataset in the metadata system. This triggers the creation of metadata field tasks for each of these required fields. Additionally, a publish task is created for the datatset and the respository. 

### Assignment Conditions
* A new entity is created in the metadata system (part of the document upload process.)

### Taskflow Diagram
{% include image.html url='/images/DIME_Keyset_Taskflow.png' description='The keyset taskflow. The global rejection state is omited to keep the diagram clear.' %}

### Technical Specifications
|-|-|
|Name| Keyset Task |
|Priority| 100 |
|Help Article Stub| keyset-task|
|Desktop | yes |
|Mobile | no | 

### Screenshots

{% include image.html url='/images/keyset-task-desktop.png' description='A keyset task as it appears when accessing the DIME web app on Desktop. This keyset task asks the user\'s intent to publish on Figshare.' %}