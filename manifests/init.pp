class ntp {

    package { 'ntp':
        ensure => present
    }

    file { '/etc/ntp.conf':
        ensure => present,
        owner => root,
        group => root,
        mode => '0644'
    }

    service { 'ntp':
        ensure => running,
        hasstatus => true,
        hasrestart => true,
        require => Package['ntp']
    }
}
