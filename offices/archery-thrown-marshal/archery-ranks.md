---
title: Drachenwald Company of Archers
excerpt: Followers of the bow
toc: true
toc_label: Contents
---



{% if site.data['archery_company'] %}
  {% assign company-ranks = site.data['archery_company'].data %}
  
{% else %}
  {% assign company-ranks = "" %}
  The company ranking isn't available right now - please check back later.
{% endif %}


# The Company of Archers

## Grand Master: By invitation. Teachers and scholars of archery 
<table>
  <tr><th>Name</th><th>Region</th><th>Group</th></tr>
 {% for itemAll in company-ranks %}{% if itemAll.rank == "Grand Master" %} <tr><td> {{ itemAll.name }} </td><td> {{ itemAll.region }} </td><td> {{ itemAll.group }} </td></tr> {% endif %}{% endfor %}
</table>

## Master: Top rank, based on prowess with the bow
<table>
  <tr><th>Name</th><th>Region</th><th>Group</th></tr>
{% for itemAll in company-ranks %}{% if itemAll.rank == "Master" %} <tr><td> {{ itemAll.name }} </td><td> {{ itemAll.region }} </td><td> {{ itemAll.group }} </td></tr> {% endif %}{% endfor %}
</table>

## Yeoman: Intermediate rank
<table>
  <tr><th>Name</th><th>Region</th><th>Group</th></tr>
{% for itemAll in company-ranks %}{% if itemAll.rank == "Yeoman" %} <tr><td> {{ itemAll.name }} </td><td> {{ itemAll.region }} </td><td> {{ itemAll.group }} </td></tr> {% endif %}{% endfor %} 
</table>

## Archer: Initial rank
<table>
  <tr><th>Name</th><th>Region</th><th>Group</th></tr>
{% for itemAll in company-ranks %}{% if itemAll.rank == "Archer" %} <tr><td> {{ itemAll.name }} </td><td> {{ itemAll.region }} </td><td> {{ itemAll.group }} </td></tr> {% endif %}{% endfor %}
</table>

## Companion: Members of the company of archery, yet to attain a rank
<table>
  <tr><th>Name</th><th>Region</th><th>Group</th></tr>
{% for itemAll in company-ranks %}{% if itemAll.rank == "Companion" %} <tr><td> {{ itemAll.name }} </td><td> {{ itemAll.region }} </td><td> {{ itemAll.group }} </td></tr> {% endif %}{% endfor %}
</table>


Data last updated: {{site.data['archery_company'].metadata.LastUpdate}}



