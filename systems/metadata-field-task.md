---
title: Metadata Field Task
layout: post
author: Alexandru Ianta
---

Metadata field tasks prompt users to fill in a single metadata field for one of their datasets. They provide a sample overview of the dataset being annotated, as well as the context of the metadata fields.

They are created for users when they add a collection of blank metadata fields to a dataset, for example the 'Darwin Core' field set. Metadata field tasks are also created for an entire collection of fields when a single field from the collection is added to a dataset. For example, if a user manually adds the 'Title' field from the 'Figshare Publish' collection, metadata tasks for the 'Licence', 'Description', 'Item Type', 'Authors' and 'Categories' fields are created for that user. Those fields aren't added to the dataset however until the user completes the task. 

### Assignment Conditions
* A collection of metadata fields has been added to a dataset.
* A single field from a collection has been added to a dataset.

### Taskflow Diagram

{% include image.html url='/images/DIME_Metadata_Field_Taskflow.png' description='The Metadata Field taskflow. The global rejection state is omitted to keep the diagram clear.'%}

### Technical Specifications

|-|-|
|Name| Metadata Field Task|
|Priority | 100 |
|Help Article Stub | mf-task |
|Desktop | yes |
|Mobile | yes |

### Screenshots

{% include image.html url='/images/metadata-field-task-desktop.png' description='A metadata field task as it appears when accessing the DIME web app on desktop.' %}

{% include image.html url='/images/metadata-field-task-mobile.png' description='A metadata field task as it appears when accessing the DIME web app on mobile.' %}