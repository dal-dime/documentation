---
title: Attribute Matching Task
layout: post
author: Alexandru Ianta
---

Attribute Matching Tasks (AMTs) represent the community member side of the croud sourcing functionality currently supported by the DIME application. The data-owner side is implemented through [Community Attribute Matching Goals]({% link systems/community-attribute-matching-goal.md %}) (CAMGs). 

AMTs ask users to search standard variable definitions and find one such defintion that best describes the parsed definition presented. These act as community suggested mappings which are sent back to the data owner for confirmation.

AMTs appear on user's dashboards while in their 'assigned' states. When a user suggests a standardized variable mapping the AMT transitions into the 'complete' state. A side effect of doing so is triggering a corresponding  transition in their associated CAMG from the 'Open' state into the 'Unmatched' state (if it isn't already in the 'Unmatched' state). 

Note the additional completed state 'Selected'. AMTs transition into this state if the data owner selects the suggestion made through the AMT as the mapping for their parsed variable. This state enables DIME to track the number of suggestions a user made which resulted in confirmed mappings by data owners. 

In combination with other factors these sorts of metrics could be used to determine the quality of a suggestion which in order to rank suggestions for data owners. 

Additionally, metrics such as these can provide valuable insight into how users interact with the platform. The tasks system lends itself to capturing this sort of information.



### Assignment Conditions
* A CAMG exists for which the user doesn't already have a corresponding AMT.
* The user is not the data owner associated with the CAMG.

### Taskflow Diagram

{% include image.html url='/images/DIME_Attribute_Matching_Taskflow.png' description='The AMT taskflow. Note how the transition of the associated CAMG from the \'Unmatched\' state to the  \'Matched\' state induces the transition from \'Complete\' to \'Selected\' in the AMT.' %}

### Technical Specifications

|-|-|
|Name|Attribute Matching Task |
|Priority | 100 |
|Help Article Stub | amt-task |
|Desktop | yes |
|Mobile | yes |

### Screenshots

{% include image.html url='/images/desktop-amt-task.gif' description='A user completing an AMT task on desktop.' %}

{% include image.html url='/images/mobile-amt-task.gif' description='A user completing an AMT task on mobile.' %}