---
title: Events in Drachenwald
redirect_from:
  - /events/
---

The calendar contains our events. As there is a lot of activity in Drachenwald, we show here those events which have been sent to the Dragon's tale or which are organised as 'Drachenwald'. If you want to find more things to do, take a look at the other calendars:
* [Nordmark (Sweden) Calendar](https://nordmark.org/kalendarium/nordmarks-kalender/#/) 
* [Insulae Draconis (UK, Ireland, Iceland) Calendar](https://insulaedraconis.org/events/#/)
* [Aarnimetsa (Finland) Calendar](https://www.aarnimetsa.org/tapahtumakalenteri/#/)
* [Central (Germany, Belgium, Austria, Netherlands, Bulgaria, ...) Calendar](https://central.drachenwald.org/#/)
* [Past Events]({{ site.baseurl }}{% link events/pastevents.md %})


{% if jekyll.environment == "production" %}
<div  id="calendar"
      legend="true"
      links="local"
      bidlinks="true"
></div>
<script type="text/javascript" src="https://scripts.drachenwald.sca.org/calendar/v3.0/calendar.js"></script>
{% elsif jekyll.environment == "staging" %}
<div  id="calendar"
      legend="true"
      links="local"
      bidlinks="true"
      localevents="none"
></div>
<script type="text/javascript" src="https://sca-drachenwald.gitlab.io/events-calendar/calendar.js"></script>
{% elsif jekyll.environment == "development" %}
<div  id="calendar"
      legend="true"
      links="local"
      bidlinks="true"
      localevents="none"
></div>
<script type="text/javascript" src="http://127.0.0.1:8080/calendar.js"></script>
{% endif %}

<div id="internetexplorer"></div>

<script>
  if ( ( !!window.MSInputMethodContext && !!document.documentMode) ) {
    document.getElementById("internetexplorer").innerHTML = "<p>To give our users the functionality they need, we're unable to display the calendar in Internet Explorer. Please use another browser, or your phone. If you have feedback, please email <a href='mailto:webminister@drachenwald.sca.org'>webminister@drachenwald.sca.org</a>.</p>";
  }

  if ( userAgent.indexOf('MSIE') > 0 ) {
    document.getElementById("internetexplorer").innerHTML = "<p>To give our users the functionality they need, we're unable to display the calendar in Internet Explorer. Please use another browser, or your phone. If you have feedback, please email <a href='mailto:webminister@drachenwald.sca.org'>webminister@drachenwald.sca.org</a>.</p>";
  }

</script>

