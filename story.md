---
layout: page
section: story
title: The story so far
permalink: /story/
---

<div class="posts">
        <div class = "content">
            <h1 class="content-subhead">The story so far...</h1>
            {% assign curDate = site.time | date: '%s' %}
            {% for post in site.posts reversed %}
                {% for tag in post.tags %}
                    {% if 'Story001' == tag %}
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
