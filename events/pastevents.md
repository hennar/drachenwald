---
title: Past events published in the Dragons Tale
---

The past events up untill 2020 are fairly reliable, but do miss the events that count as published because they were covered under a variance.

The past events from 2019 have been retrieved from the event form and are reasonably reliable, but not clear if they have been published. 

The events before 2019 have been scraped from the way back machine. There is no guarantee as to it's completeness for these years nor if they have been published.


{% if site.data.pastevents %}
  {% assign pastevents = site.data.pastevents  %}

{% else %}
  {% assign pastevents  = "" %}
	The past events  aren't available right now, please come back later.
{% endif %}

{% if site.data.courtreports %}
  {% assign courtreports = site.data.courtreports | sort: 'start_date' %}

{% else %}
  {% assign courtreports  = "" %}
	The court reports  aren't available right now.
{% endif %}


<table>

  <caption><h3>Past events</h3></caption>
  
  <thead>
    <tr>
      <th scope="col"><strong><h3>Date</h3></strong></th>
      <th scope="col"><strong><h3>Host</h3></strong></th>
      <th scope="col"><strong><h3>Event</h3></strong></th>
    </tr>
  </thead>
{% for item in pastevents %}

	{% assign event_slug = item.event_slug %}
 	   <tr>
		<td>{{ item.start-date | date: "%-d %b %Y" }} </td>
		<td>{{ item.host-branch }}</td>
		<td>{{ item.event-name }}</td>
       </tr>
{% endfor %}
</table>

<div style="text-align: center">
  <a href="{{ site.baseurl }}{% link events/calendar/index.md %}" class="btn btn--primary">View the calendar</a>
</div>
