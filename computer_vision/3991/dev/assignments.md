---
layout: page
title: تمرین‌ها
permalink: /assignments/
---

در این صفحه می‌توانید موارد مربوط به تمرین‌ها مثل مستندها و سایر موردهای مرتبط را دریافت کنید.


<ul id="archive">
{% for assignment in site.assignments %}
<li class="archiveposturl" style="background: transparent">
<div class="assignment-container">
    <div class="content">
        <span><a href="
            {% if assignment.homework contains '://' %}
              {{ assignment.homework }} 
            {% else %}
              {{ assignment.homework | prepend: site.baseurl }} 
            {% endif %}">{{ assignment.title }}</a></span><br>

        <strong>
        {% include assignment_links.html assignment=assignment %}
        </strong>
    </div>
</div>
</li>
{% endfor %}
</ul>