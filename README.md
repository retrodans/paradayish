Paradayish
===========

“A constantly evolving far-fetched story, with regular (daily/weekly) installments”

The idea of this was to try and get into writing something. I don’t necessarily mind if it is good or not, but the creative process of writing anything was important to get away from the pure consumption lifestyle of TV/Podcasts I sometimes slide into.

I will try to write a short paragraph each day, or maybe a few in advance so it continues to publish whilst I am away.

The stories will all sit on github in the code, and are available to all to read.

If you have any questions, or would like to contact me about these posts, please contact email me at: dan AT retrobadger DOT net


Hosting
=======
This site is all hosted on github pages.  Sadly though, this will not rerun Jekyll on a daily basis, and therefore would only update the lists if a commit is pushed.  I therefore wrote a bash script in the in directory which can then be run to add a date to the repo, and push it up to trigger a rebuild.

    # Paradayish
    0 1 * * * sudo /var/www/paradayish/bin/update_jekyll.sh