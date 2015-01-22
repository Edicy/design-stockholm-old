	<meta name="keywords" content="{{ page.keywords }}" />
	<meta name="description" content="{{ page.description }}" />
        <meta name="copyright" content="{{ site.copyright }}" />
	<meta name="author" content="{{ site.author }}" />
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

	{% stylesheet_link "style.css?stockholm-2" %}
	{% if editmode %}<style>.untranslated{opacity:.5;filter:alpha(Opacity=50);zoom:1}</style>{% endif %}

        <link rel="icon" href="/favicon.ico" type="image/x-icon" />
	<link rel="shortcut icon" href="/favicon.ico" type="image/ico" />
	<link rel="shortcut icon" href="/favicon.ico" type="image/x-icon" />
<!--[if IE 6]>
<style type="text/css">
#mainmenu a {
height: 23px;
}
</style>
<![endif]-->

        {% if site.search.enabled %}
	{% stylesheet_link "assets/site_search/2.0/site_search.css" static_host="true" %}
        {% endif %}
<!--[if IE 7]>
<style type="text/css">
#mainmenu .untranslated {
position: relative;
top: 10px;
}
</style>
<![endif]-->

<!--[if IE]><style>.clearfix { zoom:1; }</style><![endif]-->
