FROM solr:6.4
MAINTAINER  Jason Dudash "jason.dudash@gmail.com"

USER root

# Give the SOLR directory to root group (not root user)
# https://docs.openshift.org/latest/creating_images/guidelines.html#openshift-origin-specific-guidelines
RUN chgrp -R 0 /opt/solr \
  && chmod -R g+rwX /opt/solr

USER 8983
