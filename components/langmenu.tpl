{% if editmode %}
<div id="lang">
 <ul>

{% for language in site.languages %}
<li {% if language.selected? %}class="active"{% endif %} ><a href="{{ language.url }}">{{ language.title }}</a></li>

{% endfor %}
<li>{%languageadd%}</li>
</ul>
<div class="clear"></div>
</div>
{% endif %}


{% if site.has_many_languages? %}{%unless editmode %}<div id="lang">
		<ul>

{% for language in site.languages %}
			<li {% if language.selected? %}class="active"{% endif %} ><a href="{{ language.url }}">{{ language.title }}</a></li>
{% endfor %}


		</ul>
		<div class="clear"></div>
	</div>{% endunless %}{% endif %}