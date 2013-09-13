file { 'c:/a_file.txt':
  content   => 'one',
  before    => File['c:/file_notifying_reboot.txt']
}

file { 'c:/file_notifying_reboot.txt':
  content   => 'two',
  #notify => Reboot['reboot_now'],
  notify => Reboot['reboot_finished'],
  #notify => Reboot['reboot_pending'],
}

reboot {'reboot_finished2':
  message => "Rebooting at end of run #2",
  when => finished,
  timeout => 20,
}


reboot { 'reboot_now':
  message => "Rebooting yo",
  timeout => 20,
}
file { 'c:/file_created_after_reboot_run_now.txt':
  content => 'yep',
  subscribe => Reboot['reboot_now'],
}

reboot {'reboot_finished':
  message => "Rebooting at end of run",
  when => finished,
  timeout => 20,
} ~>
file { 'c:/file_created_after_reboot_run_finished.txt':
  content => 'yep',
}

reboot { 'reboot_pending':
  message => "Rebooting pending",
  when => pending,
  timeout => 20,
} ~>
file { 'c:/file_created_after_reboot_run_pending.txt':
  content => 'yep',
}