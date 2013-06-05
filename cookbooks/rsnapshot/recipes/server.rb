rsnapshot_server 'rsnapshot' do
  dir node['rsnapshot']['server']['dir']
  config_version node['rsnapshot']['server']['config_version']
  snapshot_root node['rsnapshot']['server']['snapshot_root']
  no_create_root node['rsnapshot']['server']['no_create_root']
  cmd_cp node['rsnapshot']['server']['cmd_cp']
  cmd_rm node['rsnapshot']['server']['cmd_rm']
  cmd_rsync node['rsnapshot']['server']['cmd_rsync']
  cmd_ssh node['rsnapshot']['server']['cmd_ssh']
  cmd_logger node['rsnapshot']['server']['cmd_logger']
  cmd_du node['rsnapshot']['server']['cmd_du']
  cmd_rsnapshot_diff node['rsnapshot']['server']['cmd_rsnapshot_diff']
  cmd_preexec node['rsnapshot']['server']['cmd_preexec']
  cmd_postexec node['rsnapshot']['server']['cmd_postexec']
  linux_lvm_cmd_lvcreate node['rsnapshot']['server']['linux_lvm_cmd_lvcreate']
  linux_lvm_cmd_lvremove node['rsnapshot']['server']['linux_lvm_cmd_lvremove']
  linux_lvm_cmd_mount node['rsnapshot']['server']['linux_lvm_cmd_mount']
  linux_lvm_cmd_umount node['rsnapshot']['server']['linux_lvm_cmd_umount']
  verbose node['rsnapshot']['server']['verbose']
  loglevel node['rsnapshot']['server']['loglevel']
  logfile node['rsnapshot']['server']['logfile']
  lockfile node['rsnapshot']['server']['lockfile']
  stop_on_stale_lockfile node['rsnapshot']['server']['stop_on_stale_lockfile']
  rsync_short_args node['rsnapshot']['server']['rsync_short_args']
  rsync_long_args node['rsnapshot']['server']['rsync_long_args']
  ssh_args node['rsnapshot']['server']['ssh_args']
  du_args node['rsnapshot']['server']['du_args']
  one_fs node['rsnapshot']['server']['one_fs']
  link_dest node['rsnapshot']['server']['link_dest']
  sync_first node['rsnapshot']['server']['sync_first']
  use_lazy_deletes node['rsnapshot']['server']['use_lazy_deletes']
  rsync_numtries node['rsnapshot']['server']['rsync_numtries']
  linux_lvm_snapshotsize node['rsnapshot']['server']['linux_lvm_snapshotsize']
  linux_lvm_snapshotname node['rsnapshot']['server']['linux_lvm_snapshotname']
  linux_lvm_vgpath node['rsnapshot']['server']['linux_lvm_vgpath']
  linux_lvm_mountpath node['rsnapshot']['server']['linux_lvm_mountpath']
  node['rsnapshot']['server']['retain'].each do |retain_name, retain_data|
    retain retain_name, retain_data if retain_data
  end
end