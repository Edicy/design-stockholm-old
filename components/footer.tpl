<div id="footer">
	<table>
  <tr>
   <td class="footer_first clearfix">{% content name="footer" xpage="true" %}</td>
   {% if site.search.enabled %}<td>
    <form id="searchform" action="" class="edys-search">
      <div>
     <input class="text" type="text" id="onpage_search" />
      </div>
    </form>
   </td>{% endif %}
    <td class="footer_last"><div id="edicy">{% loginblock %}{{ "footer_login_link" | lc }}{% endloginblock %}</div></td>
  </tr>
	</table>
	</div>