---
layout: page
section: story
title: The story so far
---

<div class="posts">
        <div class = "content">
            <h1 class="content-subhead">The story so far...</h1>
            <p>Note: This page shows the 5 most recent articles, but in order, so the most recent chapter is towards the bottom of this page.</p>
            <p>For the full story, go to the <a href="/story">full story</a> page.</p>
            {% assign curDate = site.time | date: '%s' %}
            {% for post in site.posts reversed limit:5 %}
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
                                        {% assign content = post.custom_excerpt | strip_newlines %}
                                        {% if content == "" %}
                                            {{ post.content }}
                                        {% else %}
                                            <p>{{ post.custom_excerpt }}</p>
                                            <a href="{{ site.url }}{{ post.url }}">Read more</a>
                                        {% endif %}
                                    </div>
                                </div>
                            </section>
                        {% endif %}
            {% endfor %}
        </div>
</div>
