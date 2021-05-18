---
title: Community Attribute Matching Goal
layout: post
author: Alexandru Ianta
---

Community Attribute Matching Goals (CAMGs) represent the data-owner side of the crowd sourcing functionality currently supported by the DIME application. CAMGs store a variable sourced from a parsed dataset, and the ORCID of the dataset's owner. Additionaly, they also contain sufficent information to resolve samples of all the dataset's variables. 

After an uploaded dataset is parsed, the variables (attributes) it contains are processed as follows:

1. If a mapping already exists between the parsed variable and a standardized variable (sourced from CF conventions for example). Automatically associate the parsed variable with the discovered mapping. This step will be refered to as auto-mapping.

2. After an attempt has been made to auto-map each variable from an uploaded document. Any remaining variables with no mapping are used to create Community Attribute Matching Goals. 

When a DIME user's tasks are loaded (when accessing the dashboard for example) the task service searches for CAMGs. The system filters out the requesting users CAMGs so that data owners don't recieve tasks to map their own variables (the aim is to distribute this workload to 'the crowd'). Then it filters CAMGs for which the requesting user already has a corresponding [Attribute Matching Task ]({% link systems/attribute-matching-task.md %})(AMTs). For any CAMGs that remain, an AMT is created for the requesting user. 

Through the above process a CAMG has a 1-to-many relationship with AMTs, as every DIME user except the data owner will recieve a AMT for every CAMG on the platform. 

A freshly created CAMG begins in the 'open' state, in which it remains, triggering the creation of AMTs for other users until one such user completes their AMT. At that point the CAMG transitions into the 'Unmatched' state. That is, a state in which at least one user suggested variable mapping exists and is ready to be presented to the data owner for confirmation in the form of a task. Thus, the 'Unmatched' state is the widget state for CAMGs.   

Note that an 'Unmatched' CAMG will still trigger the creation of AMTs for other users. 

Though not supported by the prototype application live at the time of writing, a data owner can disable community matching for a given variable which will transition the associated CAMG into the 'Closed' state. While in that state the CAMG will no longer trigger the creation of AMTs. However existing AMTs will remain, and the suggestions produced by users through their completion will be stored. Should the data owner re-enable community matching, the stored suggestions will cause the renabled CAMG to transition into the 'Unmatched' state if they exist. 

### Assignment Conditions
* A variable from an uploaded dataset could not be auto-mapped to a standard variable (CF convention, Darwin Core, etc).

### Taskflow Diagram

{% include image.html url='/images/DIME_Community_Attribute_Matching_Goal_Taskflow.png' description='The CAMG taskflow. Note the AMT induced transition between the \'Open\' and \'Unmatched\' states. ' %}

### Technical Specifications

|-|-|
|Name| Community Attribute Matching Goal |
|Priority | 100 |
|Help Article Stub | camg-task |
|Desktop | yes |
|Mobile | no |


### Screenshots

{% include image.html url='/images/unmatched-camg.png' description='A CAMG as it appears when in the \'Unmatched\' state. Community mapping suggestions are displayed to the data owner for confirmation. If none of the suggestions appear relevant, the owner can skip the task for 24h to allow more suggestions to accrue.' %}

{% include image.html url='/images/unmatched-camg-2.png' description='A CAMG in the process of being matched (one of the community suggestions being confirmed as correct) by the data owner.' %}