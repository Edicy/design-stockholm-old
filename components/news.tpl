{% for article in site.latest_articles limit:1 %}
<div id="cont_news">
   <div class="content"><div class="wrap">
   <h1>{{ "latest_news" |lc }}</h1>
    <div>
     <table>
      {% for article in site.latest_3_articles %}
       <tr class="post"><td><strong>{{ article.author.name }}</strong>, {{ article.created_at | date:"%d.%m" }}: <a href="{{ article.url }}">{{ article.title }}</a> <a href="{{ article.url }}#comments"><img src="{{images_path}}/comment.gif?1" alt="" />{{ article.comments_count }}</a></td></tr>
{% endfor %}
     </table>
       <a href="{{ bloglink }}" class="prevpost">{{ "older_news" |lc }} <img src="{{images_path}}/bluearrow.gif?1" alt="" /></a>
    </div></div>
   </div>
  </div>
       {% endfor %}