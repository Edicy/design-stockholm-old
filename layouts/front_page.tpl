<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="{{ page.language_code }}" lang="{{ page.language_code }}">

<head>
{% include "SiteHeader" %}
  <title>{{site.name}} &raquo; {{page.title}}</title>
</head>

<body id="front">
<div id="wrap">
	{% include "Langmenu" %}
	<div class="clear"></div>
	<div id="header">
  <h1 class="clearfix">{% editable site.header %}</h1>
   <div class="clearer"></div>
  <h2 class="clearfix">{% content name="slogan" %}</h2>
   <div class="clearer"></div>
	</div>
	{% include "Mainmenu" %}
  <div id="content"{% for article in site.latest_articles limit:1 %}style="background: url('{{images_path}}/content_loop.gif?1') repeat-y left top;"{% endfor %}>
    <div id="content_1"{% for article in site.latest_articles limit:1 %}style="background: url('{{images_path}}/content_bottom.gif?1') no-repeat left bottom;"{% endfor %}>
      <div id="content_2"{% for article in site.latest_articles limit:1 %}style="background: url('{{images_path}}/content_top.gif?1') no-repeat left top;"{% endfor %}>
  <div id="cont_left"{% for article in site.latest_articles limit:1 %}style="width: 472px;"{% endfor %}>
   <div class="content"><div class="wrap">
                        <div class="wrap-inner clearfix"{% for article in site.latest_articles limit:1 %}style="width: 428px;"{% endfor %} data-search-indexing-allowed="true">
                        <h1 class="clearfix" data-search-indexing-allowed="false">{% content name="left_heading" %}</h1>
   {% content %}</div></div>
    <div class="clear"></div>
   </div>
  </div>
  <div id="cont_right">
   <div class="content"><div class="wrap clearfix">
                        <h1 class="clearfix">{% content name="right_heading" %}</h1>
   {% content name="right" %}</div>
   </div>
  </div>
  {% include "News" %}
  <div class="clear"></div>
	</div>
	</div>
	</div>
	<div class="clear"></div>
	<div id="footer">
	<table class="foot">
  <tr>
   <td class="footer_first clearfix">{% content name="footer" xpage="true" %}</td>
   {% if site.search.enabled %}<td>

    <form id="searchform" action="" class="edys-search">
      <div><input class="text" type="text" id="onpage_search" placeholder="{{  "search" | lc }}" /></div>
     <!--<input class="button" type="submit" value="Search" />-->
    </form>
   </td>
{% endif %}
    <td class="footer_last"><div id="edicy">{% loginblock %}{{ "footer_login_link" | lc }}{% endloginblock %}</div></td>
  </tr>
	</table>
	</div>
</div>
{% unless editmode %}{{ site.analytics }}{% endunless %}
  {% include "JS" %}
</body>
</html>