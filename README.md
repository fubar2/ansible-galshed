# ansible-galshed
Ansible playbook for Galaxy+Toolshed based on git-gat material

Notes to self:

1. If use cvmfs/singularity as mulled-cache, cant list container depency admin page - takes forever looking through 70k images. Should only check on installed tools
2. Non-LTE ubuntu will always fail because cvmfs will only install on LTE (!) - now that took some time to figure out :(
3. GIE are a pain given need for wildcard ssl cert
4. There is no undo with ansible but a nice rebuild does the trick
5. tool_conf.xml needs some thought - currently just uses sample
6. ephemeris makes it easy to install tools for workflows !
7. Admin containers view times out.
8. It helps when downgrading version to do dropdb galaxy as user galaxy to avoid upgrade db problems with previous higher versions.
9. run_tool_shed expects TOOL_SHED_CONFIG_FILE to point to tool_shed.yml
10. gravity will make a lot of things simpler.
11. galaxy toolshed ansible role tool_shed.yml.j2 makes uwsgi even if you don't want - PR
12. 22.01 and gravity still not working so using 21.09
13. Using 21.09, no gravity config and some mules/farm in uwsgi allows the stupid mule restart to work. Without mules, or with gravity, ansible dies there. Something needs fixin in the galaxyproject.galaxy ansible thing.
14. Need a location /api pointing to the galaxy fastcgi port to get shed-tools to work right. 
15. galaxy ansible will enforce server/config as the config directory in priv-sep mode - does not respond to config - wasted a lot of time learning this.




Derived from

# GIT-GAT

This is a git repository with the current <abbr title="Galaxy Admin Training">GAT</abbr> history. See the current [GAT schedule](https://gxy.io/gat).

This is built from [the GTN's library of admin training](https://training.galaxyproject.org/training-material/topics/admin/)

Extra | Data
--- | ---
Date | 2022-03-17 10:47:41+00:00
Github Run ID | [1998104604](https://github.com/galaxyproject/training-material/actions/runs/1998104604)
GTN Commit | [2d72008f9df7e4d54bee35b5c289caec93407022](https://github.com/galaxyproject/training-material/tree/2d72008f9df7e4d54bee35b5c289caec93407022)
