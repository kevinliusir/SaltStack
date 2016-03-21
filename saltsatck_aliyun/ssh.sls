/etc/ssh/sshd_config:
  file.managed:
    - source: salt://files/sshd_config #文件源在哪
    - user: root #权限
    - group: root
    - mode: 644
    - backup: minion

#重启服务
  service.running:
    - name: sshd
    - enable: True
    - watch:
      - file: /etc/ssh/sshd_config
