---
title: Index
layout: default
exclude: true
---

<!-- <ul>
  {% for post in site.posts %}
    <li>
      <a href="{{ post.url | relative_url }}">{{ post.title }}</a>
    </li>
  {% endfor %}
</ul> -->

# Overview
On DIME, datasets are quick to upload, then easy to standardize, annotate, and publish on plaforms such as figshare.

The core principle is to start working with your data, **in its current state**, while breaking down the hurdles to getting it published in popular data repositories. This is achieved by combining our core features into one user friendly experience. 

Work in progress implementations of the core features described below are currently available on the [live webapp](https://dime.oceansdata.ca).  

# Core Features
  * [Easy On-Boarding](#easy-onboarding)
  * [Short, Ubiquitous Tasks](#short-tasks)
  * [Multi-Standard Definition Search](#definition-search)
  * [Crowd Enchanced](#crowd-enchanced)
  * [Simplified Annotations](#simplified-annotations)
  * [Integrated Publishing](#integrated-publishing)

# Vision
  * A Human Friendly Data Enrichment Process
  * Seamless Crowd Sourcing
  * Closing the loop between Integrators, Standard Setting Organizations and Researchers
  * Data Driven Standards

## Easy On-boarding
{:#easy-onboarding}
Login with your orcid, no additional account required.

{% include image.html url='/images/orcid-icon.svg' description='' %}

Upload a dataset just a few clicks after sign-on. 

If using Windows, install our upload tool to allow you to *right-click* and *Send To... -> DIME* on any supported dataset from your pc.

{% include image.html url='/images/send-to-dime.gif' description='Upsettingly simple upload provided by our tool for windows users' %}

Upload data in **.csv** or **.nc** format!


## Short, Ubiquitous Tasks
{:#short-tasks}
Once uploaded, your dataset is parsed to produce tasks that improve the quality of your data. Tasks are designed to be short, completeing one should not take longer than a few minutes. One of the most common tasks on the platform requires you to use our standard definition search to match a single variable from a dataset. 

{% include image.html url='/images/desktop-amt-task.gif' description='The DIME <b>taskflow</b> on desktop showing a common task: searching for a standard definition to match to a dataset variable' %}

In addition, tasks are meant to be ubiquitous. This is achieved by making tasks available on mobile, and presenting you with a continous stream of tasks called a **taskflow**, from the moment you login. No need to navigate anywhere, if there are more tasks to do, the next one be sent to you the moment you complete the current one. 

{% include image.html url='/images/mobile-amt-task.gif' description='The DIME taskflow on mobile, demonstrating the same task as before.' %}

DIME tasks cut through the monotony of the traditional publication process, so you can focus on your research, while 
growing your contributions to standardized, annotated, high quality data. 

[Read more...]({{site.url}}{% link Tasks.md %})

## Multi-Standard Definition Search
{:#definition-search}
Our search tool lets you search for applicable standards from multiple common standard providers all in one place.  

We currently support searching through definitions provided by the following standards:
* [CF Conventions](https://cfconventions.org/) 
* [Darwin Core](https://dwc.tdwg.org/)
* [ISO-8601](https://en.wikipedia.org/wiki/ISO_8601)

With support for additional standards available upon request.

## Crowd Enchanced 
{:#crowd-enchanced}
Certain tasks on DIME lend themselves to crowd sourcing. Depending on the variable name a third party should be reasonably capable of suggesting an applicable standard definition. DIME distributes matching tasks like these to other community members to speed up your integration process. 

In turn, you too will recieve community tasks to complete in your taskflow. When a community member suggests a match, you will be notified via email, or real-time in-app notifications, depending on your preferences.

Incidently, viewing existing community matches and potentially selecting one of them is another kind of task that can appear in your taskflow.

## Simplified Annotations
{:#simplified-annotations} 

What information does [Figshare](https://figshare.com/) require to publish your dataset? 

Not your problem. Simply select the appropriate predefined metadata keyset and start filling in fields.

{% include image.html url='/images/metadata-keysets.gif' description='Metadata keysets let you fill the information required to publish on your target platforms' %}

Large keysets will also be broken down into metadata tasks and added to your taskflow. Fill in one field at a time whenever it's convenient for you. 

## Integrated Publishing
{: #integrated-publishing}
Once your variables are standardized, and the required metadata has been filled in, export or even publish your dataset with just one click.

{% include image.html url='/images/figshare-upload.png' description='DIME keeps track of your progress and lets you upload once your data is ready.' %}