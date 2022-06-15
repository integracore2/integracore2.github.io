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

        <!-- /////////////////////////// -->
        {% for block in site.data.pageconfig.experience.certifications %}
        <div class="row">
          {% for cert in block %}
          <div class=" col-xs-12 col-sm-6 ">
            {% if cert.url and cert.url != "" and cert.url != nil %}
            <a href="{{ cert.url }}" target="_blank">
            {% endif %}
              <div class="certificate-item clearfix">
                <div class="certi-logo">
                  <img src="{{ site.baseurl }}{{ cert.image_url }}" alt="logo">
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
          {% endfor %}
        </div>
        {% endfor %}
        <!-- /////////////////////////// -->

        <div class="row">
          <div class=" col-xs-12 col-sm-12 ">
            <div class="p-40"></div>
          </div>
        </div>

        <!-- END: Certifications -->

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

        <!-- BEGIN: Courses Row 1 -->
        <div class="row">
          <div class=" col-xs-12 col-sm-6 ">
            <a href="{{ site.author.datacamp.profile }}" target="_blank">
              <div class="certificate-item clearfix">
                <div class="certi-logo">
                  <img src="{{ site.baseurl }}/assets/img/datacamp-courses.png" alt="logo">
                </div>

                <div class="certi-content">
                  <div class="certi-title">
                    <h4>Data Analysis in R, the data.table Way</h4>
                  </div>

                  <div class="certi-id">
                    <span>Click to Verify Achievement</span>
                  </div>
                  <div class="certi-date">
                    <span>Valid from 2019 onwards</span>
                  </div>

                  <div class="certi-company">
                    <span></span>
                  </div>
                </div>
              </div>
            </a>
          </div>

          <div class=" col-xs-12 col-sm-6 ">
            <a href="{{ site.author.datacamp.profile }}" target="_blank">
              <div class="certificate-item clearfix">
                <div class="certi-logo">
                  <img src="{{ site.baseurl }}/assets/img/datacamp-courses.png" alt="logo">
                </div>

                <div class="certi-content">
                  <div class="certi-title">
                    <h4>Unsupervised Learning in R</h4>
                  </div>

                  <div class="certi-id">
                    <span>Click to Verify Achievement</span>
                  </div>
                  <div class="certi-date">
                    <span>Valid from 2019 onwards</span>
                  </div>

                  <div class="certi-company">
                    <span></span>
                  </div>
                </div>
              </div>
            </a>
          </div>

        </div>
        <!-- END: Courses Row 1 -->
        
        <!-- BEGIN: Courses Row 2 -->
        <div class="row">
          <div class=" col-xs-12 col-sm-6 ">
            <a href="{{ site.author.datacamp.profile }}" target="_blank">
              <div class="certificate-item clearfix">
                <div class="certi-logo">
                  <img src="{{ site.baseurl }}/assets/img/datacamp-courses.png" alt="logo">
                </div>

                <div class="certi-content">
                  <div class="certi-title">
                    <h4>Deep Learning in Python</h4>
                  </div>

                  <div class="certi-id">
                    <span>Click to Verify Achievement</span>
                  </div>
                  <div class="certi-date">
                    <span>Valid from 2019 onwards</span>
                  </div>

                  <div class="certi-company">
                    <span></span>
                  </div>
                </div>
              </div>
            </a>
          </div>

          <div class=" col-xs-12 col-sm-6 ">
            <a href="{{ site.author.datacamp.profile }}" target="_blank">
              <div class="certificate-item clearfix">
                <div class="certi-logo">
                  <img src="{{ site.baseurl }}/assets/img/datacamp-courses.png" alt="logo">
                </div>

                <div class="certi-content">
                  <div class="certi-title">
                    <h4>ARIMA Models in R</h4>
                  </div>

                  <div class="certi-id">
                    <span>Click to Verify Achievement</span>
                  </div>
                  <div class="certi-date">
                    <span>Valid from 2019 onwards</span>
                  </div>

                  <div class="certi-company">
                    <span></span>
                  </div>
                </div>
              </div>
            </a>
          </div>

        </div>
        <!-- END: Courses Row 2 -->

        <!-- BEGIN: Courses Row 3 -->
        <div class="row">
          <div class=" col-xs-12 col-sm-6 ">
            <!-- <a href="" target="_blank"> -->
              <div class="certificate-item clearfix">
                <div class="certi-logo">
                  <img src="{{ site.baseurl }}/assets/img/udacity_nanodegree.png" alt="logo">
                </div>

                <div class="certi-content">
                  <div class="certi-title">
                    <h4>Machine Learning for Trading</h4>
                  </div>

                  <div class="certi-id">
                    <span>In collaboration with GeorgiaTech</span>
                  </div>
                  <div class="certi-date">
                    <span>2019</span>
                  </div>

                  <div class="certi-company">
                    <span></span>
                  </div>
                </div>
              </div>
            <!-- </a> -->
          </div>

        </div>
        <!-- END: Courses Row 3 -->
        <!-- END: Courses -->

        <div class="row">
          <div class=" col-xs-12 col-sm-12 ">
            <div class="p-40"></div>
          </div>
        </div>

        <!-- BEGIN: Skills -->

        <div class="row">
          
          <!-- BEGIN: Skills -> Industry Knowledge -->
          <div class=" col-xs-12 col-sm-4 ">
            <div class="block-title">
              <a name="industry-knowledge" style="visibility: hidden;"></a>
              <h2>{{ page_data.skills_titles[0] }}</h2>
            </div>

            <div class="skills-info skills-first-style">
              <div class="clearfix">
                <h4>Technical & Solution Architecture</h4>
                <!-- <div class="skill-value">100%</div> -->
              </div>
              <div data-value="100" class="skill-container">
                <div class="skill-percentage"></div>
              </div>
            </div>

            <div class="skills-info skills-first-style">
              <div class="clearfix">
                <h4>Cloud Application & SaaS Development</h4>
                <!-- <div class="skill-value">100%</div> -->
              </div>
              <div data-value="100" class="skill-container">
                <div class="skill-percentage"></div>
              </div>
            </div>

            <div class="skills-info skills-first-style">
              <div class="clearfix">
                <h4>Data, Software & Integrations Engineering</h4>
                <!-- <div class="skill-value">100%</div> -->
              </div>
              <div data-value="100" class="skill-container">
                <div class="skill-percentage"></div>
              </div>
            </div>

            <div class="skills-info skills-first-style">
              <div class="clearfix">
                <h4>Technical Leadership, Training & Development</h4>
                <!-- <div class="skill-value">100%</div> -->
              </div>
              <div data-value="100" class="skill-container">
                <div class="skill-percentage"></div>
              </div>
            </div>

            <div class="skills-info skills-first-style">
              <div class="clearfix">
                <h4>Data Strategy, Integration & Management</h4>
                <!-- <div class="skill-value">100%</div> -->
              </div>
              <div data-value="100" class="skill-container">
                <div class="skill-percentage"></div>
              </div>
            </div>

            <div class="skills-info skills-first-style">
              <div class="clearfix">
                <h4>IT Operations & Project Management</h4>
                <!-- <div class="skill-value">100%</div> -->
              </div>
              <div data-value="100" class="skill-container">
                <div class="skill-percentage"></div>
              </div>
            </div>

            <div class="skills-info skills-first-style">
              <div class="clearfix">
                <h4>Data Warehousing</h4>
                <!-- <div class="skill-value">100%</div> -->
              </div>
              <div data-value="100" class="skill-container">
                <div class="skill-percentage"></div>
              </div>
            </div>

            <div class="skills-info skills-first-style">
              <div class="clearfix">
                <h4>Microservices Architecture</h4>
                <!-- <div class="skill-value">100%</div> -->
              </div>
              <div data-value="100" class="skill-container">
                <div class="skill-percentage"></div>
              </div>
            </div>

            <div class="skills-info skills-first-style">
              <div class="clearfix">
                <h4>Digital Transformation</h4>
                <!-- <div class="skill-value">100%</div> -->
              </div>
              <div data-value="100" class="skill-container">
                <div class="skill-percentage"></div>
              </div>
            </div>

            <div class="skills-info skills-first-style">
              <div class="clearfix">
                <h4>Enterprise Architecture</h4>
                <!-- <div class="skill-value">100%</div> -->
              </div>
              <div data-value="100" class="skill-container">
                <div class="skill-percentage"></div>
              </div>
            </div>

            <div class="skills-info skills-first-style">
              <div class="clearfix">
                <h4>Agile Methodologies</h4>
                <!-- <div class="skill-value">100%</div> -->
              </div>
              <div data-value="100" class="skill-container">
                <div class="skill-percentage"></div>
              </div>
            </div>

            <div class="skills-info skills-first-style">
              <div class="clearfix">
                <h4>Requirements Analysis</h4>
                <!-- <div class="skill-value">100%</div> -->
              </div>
              <div data-value="100" class="skill-container">
                <div class="skill-percentage"></div>
              </div>
            </div>

            <div class="skills-info skills-first-style">
              <div class="clearfix">
                <h4>Quantitative Finance & Investing</h4>
                <!-- <div class="skill-value">100%</div> -->
              </div>
              <div data-value="100" class="skill-container">
                <div class="skill-percentage"></div>
              </div>
            </div>

            <div class="skills-info skills-first-style">
              <div class="clearfix">
                <h4>Applied Data Science, Machine Learning & AI</h4>
                <!-- <div class="skill-value">100%</div> -->
              </div>
              <div data-value="100" class="skill-container">
                <div class="skill-percentage"></div>
              </div>
            </div>

            <div class="skills-info skills-first-style">
              <div class="clearfix">
                <h4>Statistical Data Analysis & Programming</h4>
                <!-- <div class="skill-value">100%</div> -->
              </div>
              <div data-value="100" class="skill-container">
                <div class="skill-percentage"></div>
              </div>
            </div>

            <div class="skills-info skills-first-style">
              <div class="clearfix">
                <h4>Data Visualization</h4>
                <!-- <div class="skill-value">100%</div> -->
              </div>
              <div data-value="100" class="skill-container">
                <div class="skill-percentage"></div>
              </div>
            </div>

            <div class="skills-info skills-first-style">
              <div class="clearfix">
                <h4>Predictive Modeling</h4>
                <!-- <div class="skill-value">100%</div> -->
              </div>
              <div data-value="100" class="skill-container">
                <div class="skill-percentage"></div>
              </div>
            </div>

          </div>
          <!-- END: Skills -> Industry Knowledge -->

          <!-- BEGIN: Skills -> Tools & Technologies -->
          <div class=" col-xs-12 col-sm-4 ">
            <div class="block-title">
              <a name="tools-technologies" style="visibility: hidden;"></a>
              <h2>{{ page_data.skills_titles[1] }}</h2>
            </div>

            <div class="skills-info skills-first-style">
              <div class="clearfix">
                <h4>Serverless Application R&D on AWS</h4>
                <!-- <div class="skill-value">100%</div> -->
              </div>
              <div data-value="100" class="skill-container">
                <div class="skill-percentage"></div>
              </div>
            </div>

            <div class="skills-info skills-first-style">
              <div class="clearfix">
                <h4>Application Containerization (Docker)</h4>
                <!-- <div class="skill-value">100%</div> -->
              </div>
              <div data-value="100" class="skill-container">
                <div class="skill-percentage"></div>
              </div>
            </div>

            <div class="skills-info skills-first-style">
              <div class="clearfix">
                <h4>Container Orchestration (Kubernetes)</h4>
                <!-- <div class="skill-value">100%</div> -->
              </div>
              <div data-value="100" class="skill-container">
                <div class="skill-percentage"></div>
              </div>
            </div>

            <div class="skills-info skills-first-style">
              <div class="clearfix">
                <h4>Amazon Web Services (AWS)</h4>
                <!-- <div class="skill-value">100%</div> -->
              </div>
              <div data-value="100" class="skill-container">
                <div class="skill-percentage"></div>
              </div>
            </div>

            <div class="skills-info skills-first-style">
              <div class="clearfix">
                <h4>Google Cloud Platform (GCP)</h4>
                <!-- <div class="skill-value">100%</div> -->
              </div>
              <div data-value="100" class="skill-container">
                <div class="skill-percentage"></div>
              </div>
            </div>

            <div class="skills-info skills-first-style">
              <div class="clearfix">
                <h4>REST API Development</h4>
                <!-- <div class="skill-value">100%</div> -->
              </div>
              <div data-value="100" class="skill-container">
                <div class="skill-percentage"></div>
              </div>
            </div>

            <div class="skills-info skills-first-style">
              <div class="clearfix">
                <h4>SQL | MySQL, PostgreSQL, RDS, Aurora</h4>
                <!-- <div class="skill-value">100%</div> -->
              </div>
              <div data-value="100" class="skill-container">
                <div class="skill-percentage"></div>
              </div>
            </div>

            <div class="skills-info skills-first-style">
              <div class="clearfix">
                <h4>MongoDB | DocumentDB</h4>
                <!-- <div class="skill-value">100%</div> -->
              </div>
              <div data-value="100" class="skill-container">
                <div class="skill-percentage"></div>
              </div>
            </div>

            <div class="skills-info skills-first-style">
              <div class="clearfix">
                <h4>NoSQL | DynamoDB</h4>
                <!-- <div class="skill-value">100%</div> -->
              </div>
              <div data-value="100" class="skill-container">
                <div class="skill-percentage"></div>
              </div>
            </div>

            <div class="skills-info skills-first-style">
              <div class="clearfix">
                <h4>Python, R, and Julia</h4>
                <!-- <div class="skill-value">100%</div> -->
              </div>
              <div data-value="100" class="skill-container">
                <div class="skill-percentage"></div>
              </div>
            </div>

            <div class="skills-info skills-first-style">
              <div class="clearfix">
                <h4>C, C++, and Java</h4>
                <!-- <div class="skill-value">100%</div> -->
              </div>
              <div data-value="100" class="skill-container">
                <div class="skill-percentage"></div>
              </div>
            </div>

            <div class="skills-info skills-first-style">
              <div class="clearfix">
                <h4>Microsoft Azure</h4>
                <!-- <div class="skill-value">100%</div> -->
              </div>
              <div data-value="100" class="skill-container">
                <div class="skill-percentage"></div>
              </div>
            </div>

          </div>
          <!-- END: Skills -> Tools & Technologies -->

          <!-- BEGIN: Skills -> Interpersonal Skills -->
          <div class=" col-xs-12 col-sm-4 ">
            <div class="block-title">
              <a name="interpersonal-skills" style="visibility: hidden;"></a>
              <h2>{{ page_data.skills_titles[2] }}</h2>
            </div>

            <div class="skills-info skills-first-style">
              <div class="clearfix">
                <h4>Building Highly Performant, Motivated Teams</h4>
                <!-- <div class="skill-value">100%</div> -->
              </div>
              <div data-value="100" class="skill-container">
                <div class="skill-percentage"></div>
              </div>
            </div>

            <div class="skills-info skills-first-style">
              <div class="clearfix">
                <h4>Effective & Engaging Public Speaking (EN & ES)</h4>
                <!-- <div class="skill-value">100%</div> -->
              </div>
              <div data-value="100" class="skill-container">
                <div class="skill-percentage"></div>
              </div>
            </div>

            <div class="skills-info skills-first-style">
              <div class="clearfix">
                <h4>Cross-Functional Stakeholder Management</h4>
                <!-- <div class="skill-value">100%</div> -->
              </div>
              <div data-value="100" class="skill-container">
                <div class="skill-percentage"></div>
              </div>
            </div>

            <div class="skills-info skills-first-style">
              <div class="clearfix">
                <h4>Problem Solving & Analytical Aptitude</h4>
                <!-- <div class="skill-value">100%</div> -->
              </div>
              <div data-value="100" class="skill-container">
                <div class="skill-percentage"></div>
              </div>
            </div>

            <div class="skills-info skills-first-style">
              <div class="clearfix">
                <h4>People, Talent & Team Management</h4>
                <!-- <div class="skill-value">100%</div> -->
              </div>
              <div data-value="100" class="skill-container">
                <div class="skill-percentage"></div>
              </div>
            </div>

            <div class="skills-info skills-first-style">
              <div class="clearfix">
                <h4>Active Listening & Mediation Skills</h4>
                <!-- <div class="skill-value">100%</div> -->
              </div>
              <div data-value="100" class="skill-container">
                <div class="skill-percentage"></div>
              </div>
            </div>

            <div class="skills-info skills-first-style">
              <div class="clearfix">
                <h4>Versatile Team Leadership Skills</h4>
                <!-- <div class="skill-value">100%</div> -->
              </div>
              <div data-value="100" class="skill-container">
                <div class="skill-percentage"></div>
              </div>
            </div>

            <div class="skills-info skills-first-style">
              <div class="clearfix">
                <h4>Growth & Best Practices Mindset</h4>
                <!-- <div class="skill-value">100%</div> -->
              </div>
              <div data-value="100" class="skill-container">
                <div class="skill-percentage"></div>
              </div>
            </div>

          </div>
          <!-- END: Skills -> Interpersonal Skills -->

        </div>
        <!-- END: Skills -->

      </div>
    </div>
  </div>
</div>