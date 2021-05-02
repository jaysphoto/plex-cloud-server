# A class to install and manage a plex media server.
class plex {
  # From curl -v 'https://plex.tv/downloads/latest/5?channel=16&build=linux-x86_64&distro=redhat'

  class { 'plexmediaserver':
    plex_user                                 => 'plex',
    plex_media_server_home                    => '/var/lib/plexmediaserver',
    plex_media_server_application_support_dir => '/usr/lib/plexmediaserver',
    plex_media_server_max_plugin_procs        => '7',
    plex_media_server_max_stack_size          => '20000',
    plex_media_server_max_lock_mem            => '4000',
    plex_media_server_max_open_files          => '1024',
    plex_media_server_tmpdir                  => '/var/tmp',
    plex_pkg                                  => 'plexmediaserver-1.22.3.4392-d7c624def.x86_64.rpm',
    plex_url                                  => 'https://downloads.plex.tv/plex-media-server-new/1.22.3.4392-d7c624def/redhat',
  }
}