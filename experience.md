---
layout: default
title: Experience
permalink: /experience/
---
{% assign page_data = site.data.pageconfig.experience.config %}
<div id="main" class="site-main">
  <div id="main-content" class="single-page-content">
    <div id="primary" class="content-area">

      <div class="page-title">
        <h1>{{ page_data.page.title }}</h1>
        <div class="page-subtitle">
            <h4>{{ page_data.page.subtitle }}</h4>
        </div>
      </div>

      <div id="content" class="page-content site-content single-post" role="main">
        <div class="row">

          <div class=" col-xs-12 col-sm-6 ">
            <div class="block-title">
              <a name="engagements" style="visibility: hidden;"></a>
              <h2>{{ page_data.engagements.title }}</h2>
            </div>

            <div id="timeline_2" class="timeline clearfix">
              
              {% for entry in site.data.pageconfig.experience.engagements.entries %}
              <div class="timeline-item clearfix">
                <h5 class="item-period current">{{ entry.timeline }}</h5>
                <span class="item-company">{{ entry.company }}</span>
                <h4 class="item-title">{{ entry.role }}</h4>
                <p>{{ entry.description }}</p>
              </div>
              {% endfor %}
              
            </div>
          </div>

          <div class=" col-xs-12 col-sm-6 ">
            <div class="block-title">
              <a name="education" style="visibility: hidden;"></a>
              <h2>{{ page_data.education.title }}</h2>
            </div>

            <div id="timeline_1" class="timeline clearfix">
              
              {% for entry in site.data.pageconfig.experience.education.entries %}
              <div class="timeline-item clearfix">
                <h5 class="item-period ">{{ entry.timeline }}</h5>
                <span class="item-company">{{ entry.company }}</span>
                <h4 class="item-title">{{ entry.role }}</h4>
                <p>{{ entry.description }}</p>
              </div>
              {% endfor %}
              
            </div>
          </div>

        </div>

        <!-- BEGIN: Certifications -->
        <div class="row">
          <div class=" col-xs-12 col-sm-12 ">
            <div class="p-20"></div>

            <div class="block-title">
              <a name="certifications" style="visibility: hidden;"></a>
              <h2>{{ page_data.certifications.title }}</h2>
            </div>
          </div>
        </div>

        {% for block in site.data.pageconfig.experience.certifications %}
        <div class="row">
          {% for cert in block %}
          {% if cert and cert != "" and cert != nil %}
          <div class=" col-xs-12 col-sm-6 ">
            {% if cert.url and cert.url != "" and cert.url != nil %}
            <a href="{{ cert.url }}" target="_blank">
            {% endif %}
              <div class="certificate-item clearfix">
                <div class="certi-logo">
                  <img src="{{ site.baseurl }}{{ cert.image_url }}" alt="{{ cert.name }}">
                </div>

                <div class="certi-content">
                  <div class="certi-title">
                    <h4>{{ cert.name }}</h4>
                  </div>

                  <div class="certi-id">
                    <span>{{ cert.cta }}</span>
                  </div>
                  <div class="certi-date">
                    <span>{{ cert.validity }}</span>
                  </div>

                  <div class="certi-company">
                    <span></span>
                  </div>
                </div>
              </div>
            {% if cert.url and cert.url != "" and cert.url != nil %}
            </a>
            {% endif %}
          </div>
          {% endif %}
          {% endfor %}
        </div>
        {% endfor %}
        <!-- END: Certifications -->

        <div class="row">
          <div class=" col-xs-12 col-sm-12 ">
            <div class="p-40"></div>
          </div>
        </div>
        
        <!-- BEGIN: Courses -->
        <div class="row">
          <div class=" col-xs-12 col-sm-12 ">
            <div class="p-20"></div>

            <div class="block-title">
              <a name="courses" style="visibility: hidden;"></a>
              <h2>{{ page_data.courses.title }}</h2>
            </div>
          </div>
        </div>

        {% for block in site.data.pageconfig.experience.courses %}
        <div class="row">
          {% for cert in block %}
          {% if cert and cert != "" and cert != nil %}
          <div class=" col-xs-12 col-sm-6 ">
            {% if cert.url and cert.url != "" and cert.url != nil %}
            <a href="{{ cert.url }}" target="_blank">
            {% endif %}
              <div class="certificate-item clearfix">
                <div class="certi-logo">
                  <img src="{{ site.baseurl }}{{ cert.image_url }}" alt="{{ cert.name }}">
                </div>

                <div class="certi-content">
                  <div class="certi-title">
                    <h4>{{ cert.name }}</h4>
                  </div>

                  <div class="certi-id">
                    <span>{{ cert.cta }}</span>
                  </div>
                  <div class="certi-date">
                    <span>{{ cert.validity }}</span>
                  </div>

                  <div class="certi-company">
                    <span></span>
                  </div>
                </div>
              </div>
            {% if cert.url and cert.url != "" and cert.url != nil %}
            </a>
            {% endif %}
          </div>
          {% endif %}
          {% endfor %}
        </div>
        {% endfor %}
        <!-- END: Courses -->

        <div class="row">
          <div class=" col-xs-12 col-sm-12 ">
            <div class="p-40"></div>
          </div>
        </div>

        <!-- BEGIN: Skills -->
        {% assign skills_data = site.data.pageconfig.experience.skills %}
        <div class="row">
          
          <!-- BEGIN: Skills -> Industry Knowledge -->
          <div class=" col-xs-12 col-sm-4 ">
            <div class="block-title">
              <a name="industry-knowledge" style="visibility: hidden;"></a>
              <h2>{{ skills_data.industry_title }}</h2>
            </div>

            {% for skill in skills_data.industry %}
            <div class="skills-info skills-first-style">
              <div class="clearfix">
                <h4>{{ skill.name }}</h4>
                <!-- <div class="skill-value">100%</div> -->
              </div>
              <div data-value="{{ skill.value }}" class="skill-container">
                <div class="skill-percentage"></div>
              </div>
            </div>
            {% endfor %}

          </div>
          <!-- END: Skills -> Industry Knowledge -->

          <!-- BEGIN: Skills -> Tools & Technologies -->
          <div class=" col-xs-12 col-sm-4 ">
            <div class="block-title">
              <a name="tools-technologies" style="visibility: hidden;"></a>
              <h2>{{ skills_data.tools_technologies_title }}</h2>
            </div>

            {% for skill in skills_data.tools_technologies %}
            <div class="skills-info skills-first-style">
              <div class="clearfix">
                <h4>{{ skill.name }}</h4>
                <!-- <div class="skill-value">100%</div> -->
              </div>
              <div data-value="{{ skill.value }}" class="skill-container">
                <div class="skill-percentage"></div>
              </div>
            </div>
            {% endfor %}

          </div>
          <!-- END: Skills -> Tools & Technologies -->

          <!-- BEGIN: Skills -> Interpersonal Skills -->
          <div class=" col-xs-12 col-sm-4 ">
            <div class="block-title">
              <a name="interpersonal-skills" style="visibility: hidden;"></a>
              <h2>{{ skills_data.interpersonal_title }}</h2>
            </div>

            {% for skill in skills_data.interpersonal %}
            <div class="skills-info skills-first-style">
              <div class="clearfix">
                <h4>{{ skill.name }}</h4>
                <!-- <div class="skill-value">100%</div> -->
              </div>
              <div data-value="{{ skill.value }}" class="skill-container">
                <div class="skill-percentage"></div>
              </div>
            </div>
            {% endfor %}

          </div>
          <!-- END: Skills -> Interpersonal Skills -->

        </div>
        <!-- END: Skills -->

      </div>
    </div>
  </div>
</div>