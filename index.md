<ul>
  {% for post in site.posts %}
    <li>
      <a href="{{ post.url | relative_url }}">{{ post.title }}</a>
    </li>
  {% endfor %}
</ul>

# Overview
On DIME, datasets are quick to upload, and the standardization and annotation steps required to
publish on plaforms such as figshare, are broken into small, easy to do tasks. 

DIME tasks cut through the monotony of the traditional publication process, so you can focus on your research, while 
growing your contributions to standardized, annotated, high quality data.