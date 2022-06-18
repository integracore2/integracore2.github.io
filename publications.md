---
layout: default
title: {{ site.data.pageconfig.publications.config.page.title }}
slug: publications
permalink: /publications/
image: /assets/img/gabriella-clare-marino-Hx8HaI4ERkA-unsplash-medium.jpg
---
{% assign content_config = site.data.content.config %}
{% assign current_page = site.data.pageconfig.publications %}

{% assign config = current_page.config %}
{% assign category_config = config.categories %}
{% assign data = category_config.data %}

<div id="main" class="site-main">
  <div id="main-content" class="single-page-content">
    <div id="primary" class="content-area">

      <div class="page-title">
        <h1>{{ current_page.config.page.title }}</h1>
        <div class="page-subtitle">
            <h4>{{ current_page.config.page.subtitle }}</h4>
        </div>
      </div>

      <!-- ///////////////////////////////// -->
      <div id="content" class="page-content site-content single-post" role="main">
      {% for category_data in data %}
        {% assign title = "" | prepend: category_data[0] %}
        <!-- BEGIN: {{ category_config.titles[title] }} -->
        <div class="row">
          <div class=" col-xs-12 col-sm-12 ">
            <!-- Portfolio Content -->
            <div id="{{ category_data[0] }}_portfolio" class="portfolio-content">
              <a name="{{ category_data[0] }}" style="visibility: hidden;"></a>
              <div class="block-title">
                <h2>{{ category_config.titles[title] }}</h2>
              </div>
              <ul class="portfolio-filters">
                {% assign categories = config.categories.data[title] | where: 'enabled', 'true' %}
                {% for category in categories %}
                {% if forloop.first == true %}
                <li class="active">
                {% else %}
                <li>
                {% endif %}
                  <a class="filter btn btn-sm btn-link" data-group="{{ category.data_group }}">{{ category.name }}</a>
                </li>
                {% endfor %}
              </ul>

              <!-- Portfolio Grid (can be three-columns, four-columns, etc -->
              <div class="portfolio-grid three-columns shuffle">
                <!-- Sort by video date ASC -->
                {% assign category_items = current_page.content[title] | sort: 'date' %}
                {% assign item_type = "" | prepend: category_config.item_types[title] | split: "_" %}
                {% if item_type.size > 1 %}
                  {% assign item_parent = "" | prepend: item_type[0] %}
                  {% assign item_child = "" | prepend: item_type[1] %}
                  {% assign params = content_config.item_types[item_parent][item_child] %}
                {% else %}
                  {% assign params = content_config.item_types[item_type[0]] %}
                {% endif %}

                {% for entry in category_items %}
                {% if entry.enabled %}
                <figure class="item {{ params.classes.item }}" data-groups='["all", "{{ entry.category.slug }}"]'>
                  <div class="portfolio-item-img">
                  {% if item_type[0] == "video" %}
                    {% assign vid = entry.url | split:'/' | last %}
                    {% if entry.lowres_thumbnail %}
                    <img src="{{ params.thumbnail_url.prefix }}{{ vid }}{{ params.thumbnail_url.lowres_suffix }}" alt="{{ entry.name }}" title="" />
                    {% else %}
                    <img src="{{ params.thumbnail_url.prefix }}{{ vid }}{{ params.thumbnail_url.maxres_suffix }}" alt="{{ entry.name }}" title="" />
                    {% endif %}
                    <a href="{{ params.embed_prefix }}{{ vid }}?quality=high" class="{{ params.classes.link }}"></a>
                  {% else %}
                    <img src="{{ site.baseurl | append: entry.image_url }}" alt="{{ entry.name }}" title="" />
                    <a href="{{ entry.url }}" target="_blank" class="{{ params.classes.link }}"></a>
                  {% endif %}
                  </div>

                  <i class="{{ params.classes.fa }}"></i>
                  <h4 class="name">{{ entry.name }}</h4>
                  <span class="category">{{ entry.category.text }}</span>
                </figure>
                {% endif %}
                {% endfor %}
              </div>
              <!-- /Portfolio Content -->
            </div>
          </div>
        </div>
        <!-- END: {{ category_config.titles[title] }} -->

        <!-- BEGIN: Spacer -->
        <div class="row">
          <div class=" col-xs-12 col-sm-12 ">
            <div class="p-50"></div>
          </div>
        </div>
        <!-- END: Spacer -->

      {% endfor %}
      </div>
      <!-- ///////////////////////////////// -->
      
    </div>
  </div>
</div>