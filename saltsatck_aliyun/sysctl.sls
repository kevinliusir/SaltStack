/etc/sysctl.conf:
  file.managed:
    - source: salt://files/sysctl.conf
    - user: root
    - group: root
    - mode: 644
    - backup: minion

