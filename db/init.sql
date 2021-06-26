create database apachelogs;
CREATE USER 'httpd_user'@'10.128.0.28' IDENTIFIED BY 'welcome';
GRANT INSERT ON apachelogs.* TO 'httpd_user'@'10.128.0.28';
GRANT CREATE ON apachelogs.* TO 'httpd_user'@'10.128.0.28';

FLUSH PRIVILEGES;

use apachelogs;

create table scoreboard (
    id int(14) NOT NULL auto_increment,
    vhost varchar(50) NOT NULL default '',
    bytes_sent bigint(14) unsigned NOT NULL default '0',
    bytes_receive bigint(14) unsigned NOT NULL default '0',
    count_hosts int(12) NOT NULL default '0',
    count_visits int(12) NOT NULL default '0',
    count_status_200 int(12) NOT NULL default '0',
    count_status_404 int(12) NOT NULL default '0',
    count_impressions int(18) NOT NULL default '0',
    last_run int(14) NOT NULL default '0',
    month int(4) NOT NULL default '0',
    year int(4) NOT NULL default '0',
    domain varchar(50) NOT NULL default '',
    PRIMARY KEY (id),
    UNIQUE KEY `vhost` (`vhost`,`month`,`year`,`domain`)
) ;
