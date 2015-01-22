<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="{{ page.language_code }}" lang="{{ page.language_code }}">

<head>
{% include "SiteHeader" %}
{{ blog.rss_link }}
  <title>{{site.name}} &raquo; {{page.title}}</title>
</head>

<body>
<div id="wrap">
	{% include "Langmenu" %}
	<div class="clear"></div>
	<div id="head">
  {% include "Mainmenu" %}
  <div id="logo">
  {% if editmode %}{% editable site.header %}{%else%}<a href="{{ site.root_item.url }}" class="clearfix">{% editable site.header %}</a>{% endif %}
  </div>
	</div>
  <div id="cont"{% for article in site.latest_articles limit:1 %}style="background: url('{{images_path}}/cont_loop.gif?1') repeat-y left top; width: 712px;"{% endfor %}>

    <div id="cont_in"{% for article in site.latest_articles limit:1 %}style="background: url('{{images_path}}/cont_top.gif?1') no-repeat left top;"{% endfor %}>
      <div id="cont_in2"{% for article in site.latest_articles limit:1 %}style="background: url('{{images_path}}/cont_bottom.gif?1') no-repeat left bottom;"{% endfor %}>
  {% include "Submenu" %}
  <div id="content" style="background: none;">
               <div id="content-inner"{% for article in site.latest_articles limit:1 %}style="width: 634px;"{% endfor %}>
    
{% addbutton class="add-article" %}             
   {% for article in articles %}<div class="post clearfix">
    <h1><a href="{{ article.url }}">{{ article.title }}</a> <span class="author">{{ article.author.name }}</span> <span class="date">{{ article.created_at | format_date:"short" }}</span></h1>
                 <a href="{{ article.url }}#comments"><img src="{{images_path}}/comment.gif?1" alt="" />{{ "comments"|lc }}: {{ article.comments_count }}</a>
                 <div style="padding-top: 5px;">{{ article.excerpt }} <a href="{{ article.url }}">{{ "read_more" | lc }}</a></div>
    
   </div>{% endfor %}
</div>
</div></div>
                </div>
  </div>{% for article in site.latest_articles limit:1 %}
	<div id="cont_news" class="bg">
	<div id="cont_news1">
	<div id="cont_news2">
  <div class="content">
  <h1>{{ "latest_news" |lc }}</h1><div class="wrap">
   <div>
    <table>
      {% for article in site.latest_articles %}
                                                {% if forloop.index < 4 %}
<tr class="post"><td><strong>{{ article.author.name }}</strong>, {{ article.created_at | date:"%d.%m" }}: <a href="{{ article.url }}" >{{ article.title }}</a> <a href="{{ article.url }}#comments"><img src="{{images_path}}/comment.gif?1" alt=""  />{{ article.comments_count }}</a></td></tr>
{% endif %}
{% endfor %}
    </table>
     <a href="{{ bloglink }}" class="prevpost">{{ "latest_news" |lc }} <img src="{{images_path}}/bluearrow.gif?1" alt="" /></a>
   </div></div>
  </div>
	</div>
	</div>
      </div>{% endfor %}
	<div class="clear"></div>
	{% include "Footer" %}
</div>
{% unless editmode %}{{ site.analytics }}{% endunless %}
      {% include "JS" %}
</body>
</html>