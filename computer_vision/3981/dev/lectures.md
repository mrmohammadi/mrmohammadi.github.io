---
layout: page
title: مطالب ارائه شده
permalink: /lectures/
---

در این صفحه می‌توانید مطالب ارائه شده را در قالب‌ PDF دریافت کنید.


<ul id="archive">
{% for lecture in site.lectures %}
<li class="archiveposturl" style="background: transparent">
<div class="lecture-container">
    <div class="content">
        <span><a href="
            {% if lecture.pdf contains '://' %}
              {{ lecture.pdf }} 
            {% else %}
              {{ lecture.pdf | prepend: site.baseurl }} 
            {% endif %}">{{ lecture.title }}</a></span><br>

        {{ lecture.tldr }}
        <br/>
        <strong>
        {% include lecture_links.html lecture=lecture %}
        </strong>
    </div>
</div>
</li>
{% endfor %}
</ul>