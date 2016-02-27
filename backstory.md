---
layout: page
section: Other
title: Backstory - a selection of backstories for people/characters you never knew/cared about
permalink: /backstory/
---

<div class="posts">
        <div class = "content">
            <h1 class="content-subhead">Backstory</h1>
            {% assign curDate = site.time | date: '%s' %}
            {% for post in site.posts reversed %}
                {% for tag in post.tags %}
                    {% if 'Backstory' == tag %}
                        {% assign postStartDate = post.date | date: '%s' %}
                        {% if postStartDate <= curDate %}
                            <section class = "post pure-g">
                                <header class = "post-header pure-u-md-1-5 pure-u-5-5">
                                    <div class="content-wrapper">
                                        <p class = "post-meta">
                                            {{ post.date | date:"%-d.%-m.%Y" }}
                                        </p>
                                        <h3 class="post-title">{{ post.title }}</h3>
                                    </div>
                                </header>
                                <div class = "post-description pure-u-md-4-5 pure-u-5-5">
                                    <div class="content-wrapper">
                                        {{ post.content }}
                                    </div>
                                </div>
                            </section>
                        {% endif %}
                    {% endif %}
                {% endfor %}
            {% endfor %}
        </div>
</div>
