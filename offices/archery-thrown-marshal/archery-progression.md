---
title: Drachenwald Company of Archers
excerpt: Progression through the ranks
toc: true
toc_label: Contents
---

{% if site.data.archery_progression %}
  {% assign progression = site.data['archery_progression'].data %}
  
{% else %}
  {% assign progression = "" %}
  The progression list isn't available right now - please check back later.
{% endif %}

# Archers progress in the company

## Progression to Master rank 
<table>
  <tr><th>Name</th><th>Number of qualifying scores</th></tr>
 {% for itemAll in progression %}{% if itemAll.target-rank == "Master" %} <tr><td> {{ itemAll.sca-name }} </td><td> {{ itemAll.times }} </td></tr> {% endif %}{% endfor %}
</table>

## Progression to Yeoman rank
<table>
  <tr><th>Name</th><th>Number of qualifying scores</th></tr>
   {% for itemAll in progression %}{% if itemAll.target-rank == "Yeoman" %} <tr><td> {{ itemAll.sca-name }} </td><td> {{ itemAll.times }} </td></tr> {% endif %}{% endfor %}
</table>

## Progression to Archer rank
<table>
  <tr><th>Name</th><th>Number of qualifying scores</th></tr>
   {% for itemAll in progression %}{% if itemAll.target-rank == "Archer" %} <tr><td> {{ itemAll.sca-name }} </td><td> {{ itemAll.times }} </td></tr> {% endif %}{% endfor %}
</table>

## Entry to the company as a companion
<table>
  <tr><th>Name</th><th>Number of qualifying scores</th></tr>
   {% for itemAll in progression %}{% if itemAll.target-rank == "Companion" %} <tr><td> {{ itemAll.sca-name }} </td><td> {{ itemAll.times }} </td></tr> {% endif %}{% endfor %}
</table>

Data last updated: {{site.data['archery_progression'].metadata.LastUpdate}} 
