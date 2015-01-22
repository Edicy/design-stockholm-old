<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="{{ page.langauage_code }}" lang="{{ page.language_code }}">

<head>
{% include "SiteHeader" %}
{{ blog.rss_link }}
  <title>{{article.title}} &laquo; {{page.title}} | {{site.name}}</title>
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
   <div class="post">
    <h1>{% editable article.title plain="true" %} <span class="author">{{ article.author.name }}</span> <span class="date">{{ article.created_at | format_date:"short" }}</span></h1>
    <div class="blogbody clearfix" data-search-indexing-allowed="true">{% editable article.excerpt %}</div>
    <div class="blogbody clearfix" data-search-indexing-allowed="true">{% editable article.body %}</div>
                                <div class="clearer"></div>
   </div>
{% unless article.new_record? %}
                          <h2>{{ "comments_for_count" |lc }}: <span class="edy-site-blog-comments-count">{{ article.comments_count }}</span><a name="comments"></a></h2>
{% endunless %}
{% for comment in article.comments %}
   <div class="comment edy-site-blog-comment">
    {{ comment.body }}
    <br /><span class="commentauthor">{{ comment.author }}, </span><span class="commentdate">{{ comment.created_at | format_date:"long" }} {% removebutton %}</span>
   </div>
{% endfor %}
   </div></div>
{% commentform %}
   <div id="commentform">
{% unless comment.valid? %}<ul>
{% for error in comment.errors %}
<li>{{ error | lc }}</li>
{% endfor %}
</ul>{% endunless %}
                <table>
                  <tbody><tr>
                    <td colspan="2">{{ "add_a_comment" |lc }}</td>
                  </tr>
                  <tr>
                    <td>{{ "name" |lc }}:</td>
                    <td><input type="text" name="comment[author]" class="textbox" value="{{comment.author}}" /></td>
                  </tr>
                  <tr>
                    <td>{{ "email" |lc }}:</td>
                    <td><input type="text" name="comment[author_email]" class="textbox" value="{{comment.author_email}}" />&nbsp;{{ "email_wont_be_published" |lc }}</td>
                  </tr>
                  <tr>
                    <td>{{ "comment" |lc }}:</td>
                    <td><textarea class="textbox" name="comment[body]" rows="10" cols="40">{{comment.body}}</textarea></td>
                  </tr>
                  <tr>
                    <td style="text-align: right;" colspan="2"><input type="submit" value="{{ "submit" |lc }}"/></td>
                  </tr>
                </tbody></table>
                
            </div>
{% endcommentform %}
  </div></div>
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