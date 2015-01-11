{% for item in site.all_menuitems %}{% if item.selected? %}  
{% if editmode %}
<div id="submenu">
   <ul>
{% for level2 in item.visible_children %}
    <li{% unless level2.translated? %} class="untranslated"{% endunless %}{% if level2.selected? %} class="active">{{ level2.title }}{% else %}><a {% unless level2.translated? %} class="fci-editor-menuadd"{% endunless %} href="{{ level2.url }}">{{ level2.title }}</a>{% endif %}</li>
    {% endfor %}
      <li>{% menubtn item.hidden_children %}</li>
<li>{% menuadd parent="item" %}</li>
   </ul>
   <div class="clear"></div>
  </div>
{% else %}
<div id="submenu">
{% if item.children? %}
   <ul>
{% for level2 in item.all_children %}
    <li{% unless level2.translated? %} class="untranslated"{% endunless %}{% if level2.selected? %} class="active">{{ level2.title }}{% else %}><a {% unless level2.translated? %} class="fci-editor-menuadd"{% endunless %} href="{{ level2.url }}">{{ level2.title }}</a>{% endif %}</li>
    {% endfor %}

   </ul>
   <div class="clear"></div>
{% endif %}
  </div>
{% endif %}
{% endif %}{% endfor %}