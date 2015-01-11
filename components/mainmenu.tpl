<!--[if IE 7]>
<style type="text/css">
#mainmenu .untranslated {
padding: 0 11px 17px;
background: #e5f0ff;
}
</style>
<![endif]-->
<!--[if IE 6]>
<style type="text/css">
#mainmenu .untranslated {
background: #e5f0ff;
padding: 17px 11px 0;
}
</style>
<![endif]-->
<div id="mainmenu">
  {% unless site.root_item.hidden? %}<a href="{{ site.root_item.url }}" {% if site.root_item.current? %} class="active"{% endif %}>{{site.root_item.title}}</a>{% endunless %}
{% for item in site.visible_menuitems %}
  <a href="{{ item.url }}"{% unless item.translated? %} class="untranslated fci-editor-menuadd"{% endunless %} {% if item.selected? %} class="active"{% endif %}>{{ item.title }}</a>
{% endfor %}
  {% if editmode %}{% menubtn site.hidden_menuitems %}{% endif %}
{% if editmode %}{% menuadd %}{% endif %}
	</div>
{% for item in site.menuitems_with_hidden %}{% if item.blog? %}{% assign bloglink = item.url %}{% endif %}{% endfor %}