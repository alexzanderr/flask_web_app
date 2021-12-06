# HELP go_gc_duration_seconds A summary of the pause duration of garbage collection cycles.
# TYPE go_gc_duration_seconds summary
go_gc_duration_seconds{quantile="0"} 2.5613e-05
go_gc_duration_seconds{quantile="0.25"} 8.109e-05
go_gc_duration_seconds{quantile="0.5"} 0.000134313
go_gc_duration_seconds{quantile="0.75"} 0.000294215
go_gc_duration_seconds{quantile="1"} 0.00646637
go_gc_duration_seconds_sum 1.297994794
go_gc_duration_seconds_count 4239
# HELP go_goroutines Number of goroutines that currently exist.
# TYPE go_goroutines gauge
go_goroutines 9
# HELP go_info Information about the Go environment.
# TYPE go_info gauge
go_info{version="go1.16.7"} 1
# HELP go_memstats_alloc_bytes Number of bytes allocated and still in use.
# TYPE go_memstats_alloc_bytes gauge
go_memstats_alloc_bytes 2.973528e+06
# HELP go_memstats_alloc_bytes_total Total number of bytes allocated, even if freed.
# TYPE go_memstats_alloc_bytes_total counter
go_memstats_alloc_bytes_total 7.659506328e+09
# HELP go_memstats_buck_hash_sys_bytes Number of bytes used by the profiling bucket hash table.
# TYPE go_memstats_buck_hash_sys_bytes gauge
go_memstats_buck_hash_sys_bytes 1.77169e+06
# HELP go_memstats_frees_total Total number of frees.
# TYPE go_memstats_frees_total counter
go_memstats_frees_total 5.443447e+07
# HELP go_memstats_gc_cpu_fraction The fraction of this program's available CPU time used by the GC since the program started.
# TYPE go_memstats_gc_cpu_fraction gauge
go_memstats_gc_cpu_fraction 0.00011213694959692426
# HELP go_memstats_gc_sys_bytes Number of bytes used for garbage collection system metadata.
# TYPE go_memstats_gc_sys_bytes gauge
go_memstats_gc_sys_bytes 5.131176e+06
# HELP go_memstats_heap_alloc_bytes Number of heap bytes allocated and still in use.
# TYPE go_memstats_heap_alloc_bytes gauge
go_memstats_heap_alloc_bytes 2.973528e+06
# HELP go_memstats_heap_idle_bytes Number of heap bytes waiting to be used.
# TYPE go_memstats_heap_idle_bytes gauge
go_memstats_heap_idle_bytes 6.1095936e+07
# HELP go_memstats_heap_inuse_bytes Number of heap bytes that are in use.
# TYPE go_memstats_heap_inuse_bytes gauge
go_memstats_heap_inuse_bytes 4.800512e+06
# HELP go_memstats_heap_objects Number of allocated objects.
# TYPE go_memstats_heap_objects gauge
go_memstats_heap_objects 19361
# HELP go_memstats_heap_released_bytes Number of heap bytes released to OS.
# TYPE go_memstats_heap_released_bytes gauge
go_memstats_heap_released_bytes 6.0915712e+07
# HELP go_memstats_heap_sys_bytes Number of heap bytes obtained from system.
# TYPE go_memstats_heap_sys_bytes gauge
go_memstats_heap_sys_bytes 6.5896448e+07
# HELP go_memstats_last_gc_time_seconds Number of seconds since 1970 of last garbage collection.
# TYPE go_memstats_last_gc_time_seconds gauge
go_memstats_last_gc_time_seconds 1.6387348021086717e+09
# HELP go_memstats_lookups_total Total number of pointer lookups.
# TYPE go_memstats_lookups_total counter
go_memstats_lookups_total 0
# HELP go_memstats_mallocs_total Total number of mallocs.
# TYPE go_memstats_mallocs_total counter
go_memstats_mallocs_total 5.4453831e+07
# HELP go_memstats_mcache_inuse_bytes Number of bytes in use by mcache structures.
# TYPE go_memstats_mcache_inuse_bytes gauge
go_memstats_mcache_inuse_bytes 9600
# HELP go_memstats_mcache_sys_bytes Number of bytes used for mcache structures obtained from system.
# TYPE go_memstats_mcache_sys_bytes gauge
go_memstats_mcache_sys_bytes 16384
# HELP go_memstats_mspan_inuse_bytes Number of bytes in use by mspan structures.
# TYPE go_memstats_mspan_inuse_bytes gauge
go_memstats_mspan_inuse_bytes 138176
# HELP go_memstats_mspan_sys_bytes Number of bytes used for mspan structures obtained from system.
# TYPE go_memstats_mspan_sys_bytes gauge
go_memstats_mspan_sys_bytes 180224
# HELP go_memstats_next_gc_bytes Number of heap bytes when next garbage collection will take place.
# TYPE go_memstats_next_gc_bytes gauge
go_memstats_next_gc_bytes 4.194304e+06
# HELP go_memstats_other_sys_bytes Number of bytes used for other system allocations.
# TYPE go_memstats_other_sys_bytes gauge
go_memstats_other_sys_bytes 1.372086e+06
# HELP go_memstats_stack_inuse_bytes Number of bytes in use by the stack allocator.
# TYPE go_memstats_stack_inuse_bytes gauge
go_memstats_stack_inuse_bytes 1.212416e+06
# HELP go_memstats_stack_sys_bytes Number of bytes obtained from system for stack allocator.
# TYPE go_memstats_stack_sys_bytes gauge
go_memstats_stack_sys_bytes 1.212416e+06
# HELP go_memstats_sys_bytes Number of bytes obtained from system.
# TYPE go_memstats_sys_bytes gauge
go_memstats_sys_bytes 7.5580424e+07
# HELP go_threads Number of OS threads created.
# TYPE go_threads gauge
go_threads 24
# HELP node_arp_entries ARP entries by device
# TYPE node_arp_entries gauge
node_arp_entries{device="enp3s0"} 4
# HELP node_boot_time_seconds Node boot time, in unixtime.
# TYPE node_boot_time_seconds gauge
node_boot_time_seconds 1.63870207e+09
# HELP node_context_switches_total Total number of context switches.
# TYPE node_context_switches_total counter
node_context_switches_total 5.69402169e+08
# HELP node_cooling_device_cur_state Current throttle state of the cooling device
# TYPE node_cooling_device_cur_state gauge
node_cooling_device_cur_state{name="0",type="Processor"} 0
node_cooling_device_cur_state{name="1",type="Processor"} 0
node_cooling_device_cur_state{name="2",type="Processor"} 0
node_cooling_device_cur_state{name="3",type="Processor"} 0
node_cooling_device_cur_state{name="4",type="Processor"} 0
node_cooling_device_cur_state{name="5",type="Processor"} 0
node_cooling_device_cur_state{name="6",type="Processor"} 0
node_cooling_device_cur_state{name="7",type="Processor"} 0
node_cooling_device_cur_state{name="8",type="intel_powerclamp"} -1
# HELP node_cooling_device_max_state Maximum throttle state of the cooling device
# TYPE node_cooling_device_max_state gauge
node_cooling_device_max_state{name="0",type="Processor"} 3
node_cooling_device_max_state{name="1",type="Processor"} 3
node_cooling_device_max_state{name="2",type="Processor"} 3
node_cooling_device_max_state{name="3",type="Processor"} 3
node_cooling_device_max_state{name="4",type="Processor"} 3
node_cooling_device_max_state{name="5",type="Processor"} 3
node_cooling_device_max_state{name="6",type="Processor"} 3
node_cooling_device_max_state{name="7",type="Processor"} 3
node_cooling_device_max_state{name="8",type="intel_powerclamp"} 50
# HELP node_cpu_core_throttles_total Number of times this CPU core has been throttled.
# TYPE node_cpu_core_throttles_total counter
node_cpu_core_throttles_total{core="0",package="0"} 46
node_cpu_core_throttles_total{core="1",package="0"} 0
node_cpu_core_throttles_total{core="2",package="0"} 0
node_cpu_core_throttles_total{core="3",package="0"} 0
# HELP node_cpu_frequency_max_hertz Maximum cpu thread frequency in hertz.
# TYPE node_cpu_frequency_max_hertz gauge
node_cpu_frequency_max_hertz{cpu="0"} 3.8e+09
node_cpu_frequency_max_hertz{cpu="1"} 3.8e+09
node_cpu_frequency_max_hertz{cpu="2"} 3.8e+09
node_cpu_frequency_max_hertz{cpu="3"} 3.8e+09
node_cpu_frequency_max_hertz{cpu="4"} 3.8e+09
node_cpu_frequency_max_hertz{cpu="5"} 3.8e+09
node_cpu_frequency_max_hertz{cpu="6"} 3.8e+09
node_cpu_frequency_max_hertz{cpu="7"} 3.8e+09
# HELP node_cpu_frequency_min_hertz Minimum cpu thread frequency in hertz.
# TYPE node_cpu_frequency_min_hertz gauge
node_cpu_frequency_min_hertz{cpu="0"} 8e+08
node_cpu_frequency_min_hertz{cpu="1"} 8e+08
node_cpu_frequency_min_hertz{cpu="2"} 8e+08
node_cpu_frequency_min_hertz{cpu="3"} 8e+08
node_cpu_frequency_min_hertz{cpu="4"} 8e+08
node_cpu_frequency_min_hertz{cpu="5"} 8e+08
node_cpu_frequency_min_hertz{cpu="6"} 8e+08
node_cpu_frequency_min_hertz{cpu="7"} 8e+08
# HELP node_cpu_guest_seconds_total Seconds the CPUs spent in guests (VMs) for each mode.
# TYPE node_cpu_guest_seconds_total counter
node_cpu_guest_seconds_total{cpu="0",mode="nice"} 0
node_cpu_guest_seconds_total{cpu="0",mode="user"} 0
node_cpu_guest_seconds_total{cpu="1",mode="nice"} 0
node_cpu_guest_seconds_total{cpu="1",mode="user"} 0
node_cpu_guest_seconds_total{cpu="2",mode="nice"} 0
node_cpu_guest_seconds_total{cpu="2",mode="user"} 0
node_cpu_guest_seconds_total{cpu="3",mode="nice"} 0
node_cpu_guest_seconds_total{cpu="3",mode="user"} 0
node_cpu_guest_seconds_total{cpu="4",mode="nice"} 0
node_cpu_guest_seconds_total{cpu="4",mode="user"} 0
node_cpu_guest_seconds_total{cpu="5",mode="nice"} 0
node_cpu_guest_seconds_total{cpu="5",mode="user"} 0
node_cpu_guest_seconds_total{cpu="6",mode="nice"} 0
node_cpu_guest_seconds_total{cpu="6",mode="user"} 0
node_cpu_guest_seconds_total{cpu="7",mode="nice"} 0
node_cpu_guest_seconds_total{cpu="7",mode="user"} 0
# HELP node_cpu_package_throttles_total Number of times this CPU package has been throttled.
# TYPE node_cpu_package_throttles_total counter
node_cpu_package_throttles_total{package="0"} 46
# HELP node_cpu_scaling_frequency_hertz Current scaled CPU thread frequency in hertz.
# TYPE node_cpu_scaling_frequency_hertz gauge
node_cpu_scaling_frequency_hertz{cpu="0"} 1.003672e+09
node_cpu_scaling_frequency_hertz{cpu="1"} 9.4991e+08
node_cpu_scaling_frequency_hertz{cpu="2"} 1.296784e+09
node_cpu_scaling_frequency_hertz{cpu="3"} 9.74046e+08
node_cpu_scaling_frequency_hertz{cpu="4"} 9.46203e+08
node_cpu_scaling_frequency_hertz{cpu="5"} 1.033591e+09
node_cpu_scaling_frequency_hertz{cpu="6"} 9.59207e+08
node_cpu_scaling_frequency_hertz{cpu="7"} 9.29925e+08
# HELP node_cpu_scaling_frequency_max_hertz Maximum scaled CPU thread frequency in hertz.
# TYPE node_cpu_scaling_frequency_max_hertz gauge
node_cpu_scaling_frequency_max_hertz{cpu="0"} 3.8e+09
node_cpu_scaling_frequency_max_hertz{cpu="1"} 3.8e+09
node_cpu_scaling_frequency_max_hertz{cpu="2"} 3.8e+09
node_cpu_scaling_frequency_max_hertz{cpu="3"} 3.8e+09
node_cpu_scaling_frequency_max_hertz{cpu="4"} 3.8e+09
node_cpu_scaling_frequency_max_hertz{cpu="5"} 3.8e+09
node_cpu_scaling_frequency_max_hertz{cpu="6"} 3.8e+09
node_cpu_scaling_frequency_max_hertz{cpu="7"} 3.8e+09
# HELP node_cpu_scaling_frequency_min_hertz Minimum scaled CPU thread frequency in hertz.
# TYPE node_cpu_scaling_frequency_min_hertz gauge
node_cpu_scaling_frequency_min_hertz{cpu="0"} 8e+08
node_cpu_scaling_frequency_min_hertz{cpu="1"} 8e+08
node_cpu_scaling_frequency_min_hertz{cpu="2"} 8e+08
node_cpu_scaling_frequency_min_hertz{cpu="3"} 8e+08
node_cpu_scaling_frequency_min_hertz{cpu="4"} 8e+08
node_cpu_scaling_frequency_min_hertz{cpu="5"} 8e+08
node_cpu_scaling_frequency_min_hertz{cpu="6"} 8e+08
node_cpu_scaling_frequency_min_hertz{cpu="7"} 8e+08
# HELP node_cpu_seconds_total Seconds the CPUs spent in each mode.
# TYPE node_cpu_seconds_total counter
node_cpu_seconds_total{cpu="0",mode="idle"} 27193.3
node_cpu_seconds_total{cpu="0",mode="iowait"} 69.67
node_cpu_seconds_total{cpu="0",mode="irq"} 110.64
node_cpu_seconds_total{cpu="0",mode="nice"} 2902.05
node_cpu_seconds_total{cpu="0",mode="softirq"} 66.46
node_cpu_seconds_total{cpu="0",mode="steal"} 0
node_cpu_seconds_total{cpu="0",mode="system"} 1843.76
node_cpu_seconds_total{cpu="0",mode="user"} 432.1
node_cpu_seconds_total{cpu="1",mode="idle"} 27131.25
node_cpu_seconds_total{cpu="1",mode="iowait"} 119
node_cpu_seconds_total{cpu="1",mode="irq"} 104.67
node_cpu_seconds_total{cpu="1",mode="nice"} 2951.05
node_cpu_seconds_total{cpu="1",mode="softirq"} 60.89
node_cpu_seconds_total{cpu="1",mode="steal"} 0
node_cpu_seconds_total{cpu="1",mode="system"} 1831.17
node_cpu_seconds_total{cpu="1",mode="user"} 430.8
node_cpu_seconds_total{cpu="2",mode="idle"} 27157.4
node_cpu_seconds_total{cpu="2",mode="iowait"} 65.67
node_cpu_seconds_total{cpu="2",mode="irq"} 250.86
node_cpu_seconds_total{cpu="2",mode="nice"} 2593.44
node_cpu_seconds_total{cpu="2",mode="softirq"} 96.34
node_cpu_seconds_total{cpu="2",mode="steal"} 0
node_cpu_seconds_total{cpu="2",mode="system"} 1828.02
node_cpu_seconds_total{cpu="2",mode="user"} 620.42
node_cpu_seconds_total{cpu="3",mode="idle"} 27028.86
node_cpu_seconds_total{cpu="3",mode="iowait"} 67.72
node_cpu_seconds_total{cpu="3",mode="irq"} 122
node_cpu_seconds_total{cpu="3",mode="nice"} 2773
node_cpu_seconds_total{cpu="3",mode="softirq"} 58.57
node_cpu_seconds_total{cpu="3",mode="steal"} 0
node_cpu_seconds_total{cpu="3",mode="system"} 1864.3
node_cpu_seconds_total{cpu="3",mode="user"} 715.8
node_cpu_seconds_total{cpu="4",mode="idle"} 27102.4
node_cpu_seconds_total{cpu="4",mode="iowait"} 73.94
node_cpu_seconds_total{cpu="4",mode="irq"} 199.78
node_cpu_seconds_total{cpu="4",mode="nice"} 2838.11
node_cpu_seconds_total{cpu="4",mode="softirq"} 191.98
node_cpu_seconds_total{cpu="4",mode="steal"} 0
node_cpu_seconds_total{cpu="4",mode="system"} 1764.66
node_cpu_seconds_total{cpu="4",mode="user"} 457.63
node_cpu_seconds_total{cpu="5",mode="idle"} 27345.93
node_cpu_seconds_total{cpu="5",mode="iowait"} 59.55
node_cpu_seconds_total{cpu="5",mode="irq"} 104.23
node_cpu_seconds_total{cpu="5",mode="nice"} 2852.93
node_cpu_seconds_total{cpu="5",mode="softirq"} 51.74
node_cpu_seconds_total{cpu="5",mode="steal"} 0
node_cpu_seconds_total{cpu="5",mode="system"} 1762.51
node_cpu_seconds_total{cpu="5",mode="user"} 462.92
node_cpu_seconds_total{cpu="6",mode="idle"} 27267.04
node_cpu_seconds_total{cpu="6",mode="iowait"} 63.61
node_cpu_seconds_total{cpu="6",mode="irq"} 101.41
node_cpu_seconds_total{cpu="6",mode="nice"} 2950.05
node_cpu_seconds_total{cpu="6",mode="softirq"} 51.85
node_cpu_seconds_total{cpu="6",mode="steal"} 0
node_cpu_seconds_total{cpu="6",mode="system"} 1782.24
node_cpu_seconds_total{cpu="6",mode="user"} 443.43
node_cpu_seconds_total{cpu="7",mode="idle"} 27258.76
node_cpu_seconds_total{cpu="7",mode="iowait"} 86.4
node_cpu_seconds_total{cpu="7",mode="irq"} 111.07
node_cpu_seconds_total{cpu="7",mode="nice"} 2862.13
node_cpu_seconds_total{cpu="7",mode="softirq"} 57.1
node_cpu_seconds_total{cpu="7",mode="steal"} 0
node_cpu_seconds_total{cpu="7",mode="system"} 1753.77
node_cpu_seconds_total{cpu="7",mode="user"} 525.46
# HELP node_disk_discard_time_seconds_total This is the total number of seconds spent by all discards.
# TYPE node_disk_discard_time_seconds_total counter
node_disk_discard_time_seconds_total{device="nvme0n1"} 0
node_disk_discard_time_seconds_total{device="sda"} 0
node_disk_discard_time_seconds_total{device="sdb"} 0
node_disk_discard_time_seconds_total{device="sr0"} 0
# HELP node_disk_discarded_sectors_total The total number of sectors discarded successfully.
# TYPE node_disk_discarded_sectors_total counter
node_disk_discarded_sectors_total{device="nvme0n1"} 0
node_disk_discarded_sectors_total{device="sda"} 0
node_disk_discarded_sectors_total{device="sdb"} 0
node_disk_discarded_sectors_total{device="sr0"} 0
# HELP node_disk_discards_completed_total The total number of discards completed successfully.
# TYPE node_disk_discards_completed_total counter
node_disk_discards_completed_total{device="nvme0n1"} 0
node_disk_discards_completed_total{device="sda"} 0
node_disk_discards_completed_total{device="sdb"} 0
node_disk_discards_completed_total{device="sr0"} 0
# HELP node_disk_discards_merged_total The total number of discards merged.
# TYPE node_disk_discards_merged_total counter
node_disk_discards_merged_total{device="nvme0n1"} 0
node_disk_discards_merged_total{device="sda"} 0
node_disk_discards_merged_total{device="sdb"} 0
node_disk_discards_merged_total{device="sr0"} 0
# HELP node_disk_flush_requests_time_seconds_total This is the total number of seconds spent by all flush requests.
# TYPE node_disk_flush_requests_time_seconds_total counter
node_disk_flush_requests_time_seconds_total{device="nvme0n1"} 5.36
node_disk_flush_requests_time_seconds_total{device="sda"} 77.97500000000001
node_disk_flush_requests_time_seconds_total{device="sdb"} 0
node_disk_flush_requests_time_seconds_total{device="sr0"} 0
# HELP node_disk_flush_requests_total The total number of flush requests completed successfully
# TYPE node_disk_flush_requests_total counter
node_disk_flush_requests_total{device="nvme0n1"} 5657
node_disk_flush_requests_total{device="sda"} 164034
node_disk_flush_requests_total{device="sdb"} 0
node_disk_flush_requests_total{device="sr0"} 0
# HELP node_disk_io_now The number of I/Os currently in progress.
# TYPE node_disk_io_now gauge
node_disk_io_now{device="nvme0n1"} 0
node_disk_io_now{device="sda"} 0
node_disk_io_now{device="sdb"} 0
node_disk_io_now{device="sr0"} 0
# HELP node_disk_io_time_seconds_total Total seconds spent doing I/Os.
# TYPE node_disk_io_time_seconds_total counter
node_disk_io_time_seconds_total{device="nvme0n1"} 113.97
node_disk_io_time_seconds_total{device="sda"} 374.724
node_disk_io_time_seconds_total{device="sdb"} 0
node_disk_io_time_seconds_total{device="sr0"} 0.037
# HELP node_disk_io_time_weighted_seconds_total The weighted # of seconds spent doing I/Os.
# TYPE node_disk_io_time_weighted_seconds_total counter
node_disk_io_time_weighted_seconds_total{device="nvme0n1"} 184.268
node_disk_io_time_weighted_seconds_total{device="sda"} 466.201
node_disk_io_time_weighted_seconds_total{device="sdb"} 0
node_disk_io_time_weighted_seconds_total{device="sr0"} 0.017
# HELP node_disk_read_bytes_total The total number of bytes read successfully.
# TYPE node_disk_read_bytes_total counter
node_disk_read_bytes_total{device="nvme0n1"} 2.931639296e+09
node_disk_read_bytes_total{device="sda"} 2.574663168e+09
node_disk_read_bytes_total{device="sdb"} 0
node_disk_read_bytes_total{device="sr0"} 2048
# HELP node_disk_read_time_seconds_total The total number of seconds spent by all reads.
# TYPE node_disk_read_time_seconds_total counter
node_disk_read_time_seconds_total{device="nvme0n1"} 11.768
node_disk_read_time_seconds_total{device="sda"} 17.985
node_disk_read_time_seconds_total{device="sdb"} 0
node_disk_read_time_seconds_total{device="sr0"} 0.017
# HELP node_disk_reads_completed_total The total number of reads completed successfully.
# TYPE node_disk_reads_completed_total counter
node_disk_reads_completed_total{device="nvme0n1"} 62364
node_disk_reads_completed_total{device="sda"} 38017
node_disk_reads_completed_total{device="sdb"} 0
node_disk_reads_completed_total{device="sr0"} 10
# HELP node_disk_reads_merged_total The total number of reads merged.
# TYPE node_disk_reads_merged_total counter
node_disk_reads_merged_total{device="nvme0n1"} 26932
node_disk_reads_merged_total{device="sda"} 22022
node_disk_reads_merged_total{device="sdb"} 0
node_disk_reads_merged_total{device="sr0"} 0
# HELP node_disk_write_time_seconds_total This is the total number of seconds spent by all writes.
# TYPE node_disk_write_time_seconds_total counter
node_disk_write_time_seconds_total{device="nvme0n1"} 167.139
node_disk_write_time_seconds_total{device="sda"} 370.24
node_disk_write_time_seconds_total{device="sdb"} 0
node_disk_write_time_seconds_total{device="sr0"} 0
# HELP node_disk_writes_completed_total The total number of writes completed successfully.
# TYPE node_disk_writes_completed_total counter
node_disk_writes_completed_total{device="nvme0n1"} 62083
node_disk_writes_completed_total{device="sda"} 462989
node_disk_writes_completed_total{device="sdb"} 0
node_disk_writes_completed_total{device="sr0"} 0
# HELP node_disk_writes_merged_total The number of writes merged.
# TYPE node_disk_writes_merged_total counter
node_disk_writes_merged_total{device="nvme0n1"} 44676
node_disk_writes_merged_total{device="sda"} 724733
node_disk_writes_merged_total{device="sdb"} 0
node_disk_writes_merged_total{device="sr0"} 0
# HELP node_disk_written_bytes_total The total number of bytes written successfully.
# TYPE node_disk_written_bytes_total counter
node_disk_written_bytes_total{device="nvme0n1"} 6.1989376e+08
node_disk_written_bytes_total{device="sda"} 9.960154112e+09
node_disk_written_bytes_total{device="sdb"} 0
node_disk_written_bytes_total{device="sr0"} 0
# HELP node_entropy_available_bits Bits of available entropy.
# TYPE node_entropy_available_bits gauge
node_entropy_available_bits 3708
# HELP node_entropy_pool_size_bits Bits of entropy pool.
# TYPE node_entropy_pool_size_bits gauge
node_entropy_pool_size_bits 4096
# HELP node_exporter_build_info A metric with a constant '1' value labeled by version, revision, branch, and goversion from which node_exporter was built.
# TYPE node_exporter_build_info gauge
node_exporter_build_info{branch="tarball",goversion="go1.16.7",revision="1.2.2",version="1.2.2"} 1
# HELP node_filefd_allocated File descriptor statistics: allocated.
# TYPE node_filefd_allocated gauge
node_filefd_allocated 23840
# HELP node_filefd_maximum File descriptor statistics: maximum.
# TYPE node_filefd_maximum gauge
node_filefd_maximum 9.223372036854776e+18
# HELP node_filesystem_avail_bytes Filesystem space available to non-root users in bytes.
# TYPE node_filesystem_avail_bytes gauge
node_filesystem_avail_bytes{device="/dev/nvme0n1p1",fstype="vfat",mountpoint="/boot/efi"} 5.22944512e+08
node_filesystem_avail_bytes{device="/dev/nvme0n1p3",fstype="ext4",mountpoint="/"} 1.55523731456e+11
node_filesystem_avail_bytes{device="/dev/sda1",fstype="ext4",mountpoint="/home"} 2.70602518528e+11
node_filesystem_avail_bytes{device="run",fstype="tmpfs",mountpoint="/run"} 8.32940032e+09
node_filesystem_avail_bytes{device="tmpfs",fstype="tmpfs",mountpoint="/run/user/1000"} 1.666183168e+09
node_filesystem_avail_bytes{device="tmpfs",fstype="tmpfs",mountpoint="/tmp"} 8.27222016e+09
# HELP node_filesystem_device_error Whether an error occurred while getting statistics for the given device.
# TYPE node_filesystem_device_error gauge
node_filesystem_device_error{device="/dev/nvme0n1p1",fstype="vfat",mountpoint="/boot/efi"} 0
node_filesystem_device_error{device="/dev/nvme0n1p3",fstype="ext4",mountpoint="/"} 0
node_filesystem_device_error{device="/dev/sda1",fstype="ext4",mountpoint="/home"} 0
node_filesystem_device_error{device="gvfsd-fuse",fstype="fuse.gvfsd-fuse",mountpoint="/run/user/1000/gvfs"} 1
node_filesystem_device_error{device="none",fstype="ramfs",mountpoint="/run/credentials/systemd-sysusers.service"} 1
node_filesystem_device_error{device="run",fstype="tmpfs",mountpoint="/run"} 0
node_filesystem_device_error{device="tmpfs",fstype="tmpfs",mountpoint="/run/user/1000"} 0
node_filesystem_device_error{device="tmpfs",fstype="tmpfs",mountpoint="/tmp"} 0
# HELP node_filesystem_files Filesystem total file nodes.
# TYPE node_filesystem_files gauge
node_filesystem_files{device="/dev/nvme0n1p1",fstype="vfat",mountpoint="/boot/efi"} 0
node_filesystem_files{device="/dev/nvme0n1p3",fstype="ext4",mountpoint="/"} 1.425408e+07
node_filesystem_files{device="/dev/sda1",fstype="ext4",mountpoint="/home"} 3.1260672e+07
node_filesystem_files{device="run",fstype="tmpfs",mountpoint="/run"} 2.03405e+06
node_filesystem_files{device="tmpfs",fstype="tmpfs",mountpoint="/run/user/1000"} 406810
node_filesystem_files{device="tmpfs",fstype="tmpfs",mountpoint="/tmp"} 409600
# HELP node_filesystem_files_free Filesystem total free file nodes.
# TYPE node_filesystem_files_free gauge
node_filesystem_files_free{device="/dev/nvme0n1p1",fstype="vfat",mountpoint="/boot/efi"} 0
node_filesystem_files_free{device="/dev/nvme0n1p3",fstype="ext4",mountpoint="/"} 1.3213734e+07
node_filesystem_files_free{device="/dev/sda1",fstype="ext4",mountpoint="/home"} 3.0508233e+07
node_filesystem_files_free{device="run",fstype="tmpfs",mountpoint="/run"} 2.032865e+06
node_filesystem_files_free{device="tmpfs",fstype="tmpfs",mountpoint="/run/user/1000"} 406704
node_filesystem_files_free{device="tmpfs",fstype="tmpfs",mountpoint="/tmp"} 409486
# HELP node_filesystem_free_bytes Filesystem free space in bytes.
# TYPE node_filesystem_free_bytes gauge
node_filesystem_free_bytes{device="/dev/nvme0n1p1",fstype="vfat",mountpoint="/boot/efi"} 5.22944512e+08
node_filesystem_free_bytes{device="/dev/nvme0n1p3",fstype="ext4",mountpoint="/"} 1.67211769856e+11
node_filesystem_free_bytes{device="/dev/sda1",fstype="ext4",mountpoint="/home"} 2.96224538624e+11
node_filesystem_free_bytes{device="run",fstype="tmpfs",mountpoint="/run"} 8.32940032e+09
node_filesystem_free_bytes{device="tmpfs",fstype="tmpfs",mountpoint="/run/user/1000"} 1.666183168e+09
node_filesystem_free_bytes{device="tmpfs",fstype="tmpfs",mountpoint="/tmp"} 8.27222016e+09
# HELP node_filesystem_readonly Filesystem read-only status.
# TYPE node_filesystem_readonly gauge
node_filesystem_readonly{device="/dev/nvme0n1p1",fstype="vfat",mountpoint="/boot/efi"} 0
node_filesystem_readonly{device="/dev/nvme0n1p3",fstype="ext4",mountpoint="/"} 0
node_filesystem_readonly{device="/dev/sda1",fstype="ext4",mountpoint="/home"} 0
node_filesystem_readonly{device="run",fstype="tmpfs",mountpoint="/run"} 0
node_filesystem_readonly{device="tmpfs",fstype="tmpfs",mountpoint="/run/user/1000"} 0
node_filesystem_readonly{device="tmpfs",fstype="tmpfs",mountpoint="/tmp"} 0
# HELP node_filesystem_size_bytes Filesystem size in bytes.
# TYPE node_filesystem_size_bytes gauge
node_filesystem_size_bytes{device="/dev/nvme0n1p1",fstype="vfat",mountpoint="/boot/efi"} 5.23247616e+08
node_filesystem_size_bytes{device="/dev/nvme0n1p3",fstype="ext4",mountpoint="/"} 2.28623519744e+11
node_filesystem_size_bytes{device="/dev/sda1",fstype="ext4",mountpoint="/home"} 5.02917136384e+11
node_filesystem_size_bytes{device="run",fstype="tmpfs",mountpoint="/run"} 8.3314688e+09
node_filesystem_size_bytes{device="tmpfs",fstype="tmpfs",mountpoint="/run/user/1000"} 1.66629376e+09
node_filesystem_size_bytes{device="tmpfs",fstype="tmpfs",mountpoint="/tmp"} 8.3314688e+09
# HELP node_forks_total Total number of forks.
# TYPE node_forks_total counter
node_forks_total 5.378982e+06
# HELP node_hwmon_chip_names Annotation metric for human-readable chip names
# TYPE node_hwmon_chip_names gauge
node_hwmon_chip_names{chip="0000:00:1d_0_0000:05:00_0",chip_name="nvme"} 1
node_hwmon_chip_names{chip="platform_asus_nb_wmi",chip_name="asus"} 1
node_hwmon_chip_names{chip="platform_coretemp_0",chip_name="coretemp"} 1
node_hwmon_chip_names{chip="power_supply_ac0",chip_name="ac0"} 1
node_hwmon_chip_names{chip="power_supply_bat0",chip_name="bat0"} 1
node_hwmon_chip_names{chip="thermal_thermal_zone0",chip_name="acpitz"} 1
node_hwmon_chip_names{chip="thermal_thermal_zone1",chip_name="pch_skylake"} 1
node_hwmon_chip_names{chip="thermal_thermal_zone3",chip_name="iwlwifi_1"} 1
# HELP node_hwmon_curr_amps Hardware monitor for current (input)
# TYPE node_hwmon_curr_amps gauge
node_hwmon_curr_amps{chip="power_supply_bat0",sensor="curr1"} 0
# HELP node_hwmon_fan_rpm Hardware monitor for fan revolutions per minute (input)
# TYPE node_hwmon_fan_rpm gauge
node_hwmon_fan_rpm{chip="platform_asus_nb_wmi",sensor="fan1"} 2600
# HELP node_hwmon_in_volts Hardware monitor for voltage (input)
# TYPE node_hwmon_in_volts gauge
node_hwmon_in_volts{chip="power_supply_bat0",sensor="in0"} 16.197
# HELP node_hwmon_pwm_enable Hardware monitor pwm element enable
# TYPE node_hwmon_pwm_enable gauge
node_hwmon_pwm_enable{chip="platform_asus_nb_wmi",sensor="pwm1"} 2
# HELP node_hwmon_sensor_label Label for given chip and sensor
# TYPE node_hwmon_sensor_label gauge
node_hwmon_sensor_label{chip="0000:00:1d_0_0000:05:00_0",label="composite",sensor="temp1"} 1
node_hwmon_sensor_label{chip="0000:00:1d_0_0000:05:00_0",label="sensor_1",sensor="temp2"} 1
node_hwmon_sensor_label{chip="0000:00:1d_0_0000:05:00_0",label="sensor_2",sensor="temp3"} 1
node_hwmon_sensor_label{chip="platform_asus_nb_wmi",label="cpu_fan",sensor="fan1"} 1
node_hwmon_sensor_label{chip="platform_coretemp_0",label="core_0",sensor="temp2"} 1
node_hwmon_sensor_label{chip="platform_coretemp_0",label="core_1",sensor="temp3"} 1
node_hwmon_sensor_label{chip="platform_coretemp_0",label="core_2",sensor="temp4"} 1
node_hwmon_sensor_label{chip="platform_coretemp_0",label="core_3",sensor="temp5"} 1
node_hwmon_sensor_label{chip="platform_coretemp_0",label="package_id_0",sensor="temp1"} 1
# HELP node_hwmon_temp_alarm Hardware sensor alarm status (temp)
# TYPE node_hwmon_temp_alarm gauge
node_hwmon_temp_alarm{chip="0000:00:1d_0_0000:05:00_0",sensor="temp1"} 0
# HELP node_hwmon_temp_celsius Hardware monitor for temperature (input)
# TYPE node_hwmon_temp_celsius gauge
node_hwmon_temp_celsius{chip="0000:00:1d_0_0000:05:00_0",sensor="temp1"} 40.85
node_hwmon_temp_celsius{chip="0000:00:1d_0_0000:05:00_0",sensor="temp2"} 40.85
node_hwmon_temp_celsius{chip="0000:00:1d_0_0000:05:00_0",sensor="temp3"} 37.85
node_hwmon_temp_celsius{chip="platform_coretemp_0",sensor="temp1"} 52
node_hwmon_temp_celsius{chip="platform_coretemp_0",sensor="temp2"} 48
node_hwmon_temp_celsius{chip="platform_coretemp_0",sensor="temp3"} 48
node_hwmon_temp_celsius{chip="platform_coretemp_0",sensor="temp4"} 46
node_hwmon_temp_celsius{chip="platform_coretemp_0",sensor="temp5"} 52
node_hwmon_temp_celsius{chip="thermal_thermal_zone0",sensor="temp0"} 51
node_hwmon_temp_celsius{chip="thermal_thermal_zone0",sensor="temp1"} 51
node_hwmon_temp_celsius{chip="thermal_thermal_zone1",sensor="temp0"} 55.5
node_hwmon_temp_celsius{chip="thermal_thermal_zone1",sensor="temp1"} 55.5
node_hwmon_temp_celsius{chip="thermal_thermal_zone3",sensor="temp0"} 42
node_hwmon_temp_celsius{chip="thermal_thermal_zone3",sensor="temp1"} 42
# HELP node_hwmon_temp_crit_alarm_celsius Hardware monitor for temperature (crit_alarm)
# TYPE node_hwmon_temp_crit_alarm_celsius gauge
node_hwmon_temp_crit_alarm_celsius{chip="platform_coretemp_0",sensor="temp1"} 0
node_hwmon_temp_crit_alarm_celsius{chip="platform_coretemp_0",sensor="temp2"} 0
node_hwmon_temp_crit_alarm_celsius{chip="platform_coretemp_0",sensor="temp3"} 0
node_hwmon_temp_crit_alarm_celsius{chip="platform_coretemp_0",sensor="temp4"} 0
node_hwmon_temp_crit_alarm_celsius{chip="platform_coretemp_0",sensor="temp5"} 0
# HELP node_hwmon_temp_crit_celsius Hardware monitor for temperature (crit)
# TYPE node_hwmon_temp_crit_celsius gauge
node_hwmon_temp_crit_celsius{chip="0000:00:1d_0_0000:05:00_0",sensor="temp1"} 84.85000000000001
node_hwmon_temp_crit_celsius{chip="platform_coretemp_0",sensor="temp1"} 100
node_hwmon_temp_crit_celsius{chip="platform_coretemp_0",sensor="temp2"} 100
node_hwmon_temp_crit_celsius{chip="platform_coretemp_0",sensor="temp3"} 100
node_hwmon_temp_crit_celsius{chip="platform_coretemp_0",sensor="temp4"} 100
node_hwmon_temp_crit_celsius{chip="platform_coretemp_0",sensor="temp5"} 100
node_hwmon_temp_crit_celsius{chip="thermal_thermal_zone0",sensor="temp1"} 98
# HELP node_hwmon_temp_max_celsius Hardware monitor for temperature (max)
# TYPE node_hwmon_temp_max_celsius gauge
node_hwmon_temp_max_celsius{chip="0000:00:1d_0_0000:05:00_0",sensor="temp1"} 84.85000000000001
node_hwmon_temp_max_celsius{chip="0000:00:1d_0_0000:05:00_0",sensor="temp2"} 65261.85
node_hwmon_temp_max_celsius{chip="0000:00:1d_0_0000:05:00_0",sensor="temp3"} 65261.85
node_hwmon_temp_max_celsius{chip="platform_coretemp_0",sensor="temp1"} 100
node_hwmon_temp_max_celsius{chip="platform_coretemp_0",sensor="temp2"} 100
node_hwmon_temp_max_celsius{chip="platform_coretemp_0",sensor="temp3"} 100
node_hwmon_temp_max_celsius{chip="platform_coretemp_0",sensor="temp4"} 100
node_hwmon_temp_max_celsius{chip="platform_coretemp_0",sensor="temp5"} 100
# HELP node_hwmon_temp_min_celsius Hardware monitor for temperature (min)
# TYPE node_hwmon_temp_min_celsius gauge
node_hwmon_temp_min_celsius{chip="0000:00:1d_0_0000:05:00_0",sensor="temp1"} -273.15000000000003
node_hwmon_temp_min_celsius{chip="0000:00:1d_0_0000:05:00_0",sensor="temp2"} -273.15000000000003
node_hwmon_temp_min_celsius{chip="0000:00:1d_0_0000:05:00_0",sensor="temp3"} -273.15000000000003
# HELP node_intr_total Total number of interrupts serviced.
# TYPE node_intr_total counter
node_intr_total 1.44243258e+08
# HELP node_load1 1m load average.
# TYPE node_load1 gauge
node_load1 2.71
# HELP node_load15 15m load average.
# TYPE node_load15 gauge
node_load15 2.04
# HELP node_load5 5m load average.
# TYPE node_load5 gauge
node_load5 2.13
# HELP node_memory_Active_anon_bytes Memory information field Active_anon_bytes.
# TYPE node_memory_Active_anon_bytes gauge
node_memory_Active_anon_bytes 4.0996864e+08
# HELP node_memory_Active_bytes Memory information field Active_bytes.
# TYPE node_memory_Active_bytes gauge
node_memory_Active_bytes 2.64947712e+09
# HELP node_memory_Active_file_bytes Memory information field Active_file_bytes.
# TYPE node_memory_Active_file_bytes gauge
node_memory_Active_file_bytes 2.23950848e+09
# HELP node_memory_AnonHugePages_bytes Memory information field AnonHugePages_bytes.
# TYPE node_memory_AnonHugePages_bytes gauge
node_memory_AnonHugePages_bytes 0
# HELP node_memory_AnonPages_bytes Memory information field AnonPages_bytes.
# TYPE node_memory_AnonPages_bytes gauge
node_memory_AnonPages_bytes 7.915270144e+09
# HELP node_memory_Bounce_bytes Memory information field Bounce_bytes.
# TYPE node_memory_Bounce_bytes gauge
node_memory_Bounce_bytes 0
# HELP node_memory_Buffers_bytes Memory information field Buffers_bytes.
# TYPE node_memory_Buffers_bytes gauge
node_memory_Buffers_bytes 8.4649984e+08
# HELP node_memory_Cached_bytes Memory information field Cached_bytes.
# TYPE node_memory_Cached_bytes gauge
node_memory_Cached_bytes 4.805148672e+09
# HELP node_memory_CmaFree_bytes Memory information field CmaFree_bytes.
# TYPE node_memory_CmaFree_bytes gauge
node_memory_CmaFree_bytes 0
# HELP node_memory_CmaTotal_bytes Memory information field CmaTotal_bytes.
# TYPE node_memory_CmaTotal_bytes gauge
node_memory_CmaTotal_bytes 0
# HELP node_memory_CommitLimit_bytes Memory information field CommitLimit_bytes.
# TYPE node_memory_CommitLimit_bytes gauge
node_memory_CommitLimit_bytes 2.4437592064e+10
# HELP node_memory_Committed_AS_bytes Memory information field Committed_AS_bytes.
# TYPE node_memory_Committed_AS_bytes gauge
node_memory_Committed_AS_bytes 2.2297657344e+10
# HELP node_memory_DirectMap1G_bytes Memory information field DirectMap1G_bytes.
# TYPE node_memory_DirectMap1G_bytes gauge
node_memory_DirectMap1G_bytes 2.147483648e+09
# HELP node_memory_DirectMap2M_bytes Memory information field DirectMap2M_bytes.
# TYPE node_memory_DirectMap2M_bytes gauge
node_memory_DirectMap2M_bytes 1.4403239936e+10
# HELP node_memory_DirectMap4k_bytes Memory information field DirectMap4k_bytes.
# TYPE node_memory_DirectMap4k_bytes gauge
node_memory_DirectMap4k_bytes 5.08780544e+08
# HELP node_memory_Dirty_bytes Memory information field Dirty_bytes.
# TYPE node_memory_Dirty_bytes gauge
node_memory_Dirty_bytes 3.854336e+06
# HELP node_memory_FileHugePages_bytes Memory information field FileHugePages_bytes.
# TYPE node_memory_FileHugePages_bytes gauge
node_memory_FileHugePages_bytes 0
# HELP node_memory_FilePmdMapped_bytes Memory information field FilePmdMapped_bytes.
# TYPE node_memory_FilePmdMapped_bytes gauge
node_memory_FilePmdMapped_bytes 0
# HELP node_memory_HardwareCorrupted_bytes Memory information field HardwareCorrupted_bytes.
# TYPE node_memory_HardwareCorrupted_bytes gauge
node_memory_HardwareCorrupted_bytes 0
# HELP node_memory_HugePages_Free Memory information field HugePages_Free.
# TYPE node_memory_HugePages_Free gauge
node_memory_HugePages_Free 0
# HELP node_memory_HugePages_Rsvd Memory information field HugePages_Rsvd.
# TYPE node_memory_HugePages_Rsvd gauge
node_memory_HugePages_Rsvd 0
# HELP node_memory_HugePages_Surp Memory information field HugePages_Surp.
# TYPE node_memory_HugePages_Surp gauge
node_memory_HugePages_Surp 0
# HELP node_memory_HugePages_Total Memory information field HugePages_Total.
# TYPE node_memory_HugePages_Total gauge
node_memory_HugePages_Total 0
# HELP node_memory_Hugepagesize_bytes Memory information field Hugepagesize_bytes.
# TYPE node_memory_Hugepagesize_bytes gauge
node_memory_Hugepagesize_bytes 2.097152e+06
# HELP node_memory_Hugetlb_bytes Memory information field Hugetlb_bytes.
# TYPE node_memory_Hugetlb_bytes gauge
node_memory_Hugetlb_bytes 0
# HELP node_memory_Inactive_anon_bytes Memory information field Inactive_anon_bytes.
# TYPE node_memory_Inactive_anon_bytes gauge
node_memory_Inactive_anon_bytes 8.530173952e+09
# HELP node_memory_Inactive_bytes Memory information field Inactive_bytes.
# TYPE node_memory_Inactive_bytes gauge
node_memory_Inactive_bytes 1.0741764096e+10
# HELP node_memory_Inactive_file_bytes Memory information field Inactive_file_bytes.
# TYPE node_memory_Inactive_file_bytes gauge
node_memory_Inactive_file_bytes 2.211590144e+09
# HELP node_memory_KReclaimable_bytes Memory information field KReclaimable_bytes.
# TYPE node_memory_KReclaimable_bytes gauge
node_memory_KReclaimable_bytes 3.2241664e+08
# HELP node_memory_KernelStack_bytes Memory information field KernelStack_bytes.
# TYPE node_memory_KernelStack_bytes gauge
node_memory_KernelStack_bytes 3.3767424e+07
# HELP node_memory_Mapped_bytes Memory information field Mapped_bytes.
# TYPE node_memory_Mapped_bytes gauge
node_memory_Mapped_bytes 1.16404224e+09
# HELP node_memory_MemAvailable_bytes Memory information field MemAvailable_bytes.
# TYPE node_memory_MemAvailable_bytes gauge
node_memory_MemAvailable_bytes 6.740877312e+09
# HELP node_memory_MemFree_bytes Memory information field MemFree_bytes.
# TYPE node_memory_MemFree_bytes gauge
node_memory_MemFree_bytes 2.31780352e+09
# HELP node_memory_MemTotal_bytes Memory information field MemTotal_bytes.
# TYPE node_memory_MemTotal_bytes gauge
node_memory_MemTotal_bytes 1.66629376e+10
# HELP node_memory_Mlocked_bytes Memory information field Mlocked_bytes.
# TYPE node_memory_Mlocked_bytes gauge
node_memory_Mlocked_bytes 114688
# HELP node_memory_NFS_Unstable_bytes Memory information field NFS_Unstable_bytes.
# TYPE node_memory_NFS_Unstable_bytes gauge
node_memory_NFS_Unstable_bytes 0
# HELP node_memory_PageTables_bytes Memory information field PageTables_bytes.
# TYPE node_memory_PageTables_bytes gauge
node_memory_PageTables_bytes 9.4900224e+07
# HELP node_memory_Percpu_bytes Memory information field Percpu_bytes.
# TYPE node_memory_Percpu_bytes gauge
node_memory_Percpu_bytes 5.89824e+06
# HELP node_memory_SReclaimable_bytes Memory information field SReclaimable_bytes.
# TYPE node_memory_SReclaimable_bytes gauge
node_memory_SReclaimable_bytes 3.2241664e+08
# HELP node_memory_SUnreclaim_bytes Memory information field SUnreclaim_bytes.
# TYPE node_memory_SUnreclaim_bytes gauge
node_memory_SUnreclaim_bytes 1.46075648e+08
# HELP node_memory_ShmemHugePages_bytes Memory information field ShmemHugePages_bytes.
# TYPE node_memory_ShmemHugePages_bytes gauge
node_memory_ShmemHugePages_bytes 0
# HELP node_memory_ShmemPmdMapped_bytes Memory information field ShmemPmdMapped_bytes.
# TYPE node_memory_ShmemPmdMapped_bytes gauge
node_memory_ShmemPmdMapped_bytes 0
# HELP node_memory_Shmem_bytes Memory information field Shmem_bytes.
# TYPE node_memory_Shmem_bytes gauge
node_memory_Shmem_bytes 1.308209152e+09
# HELP node_memory_Slab_bytes Memory information field Slab_bytes.
# TYPE node_memory_Slab_bytes gauge
node_memory_Slab_bytes 4.68492288e+08
# HELP node_memory_SwapCached_bytes Memory information field SwapCached_bytes.
# TYPE node_memory_SwapCached_bytes gauge
node_memory_SwapCached_bytes 0
# HELP node_memory_SwapFree_bytes Memory information field SwapFree_bytes.
# TYPE node_memory_SwapFree_bytes gauge
node_memory_SwapFree_bytes 1.6105074688e+10
# HELP node_memory_SwapTotal_bytes Memory information field SwapTotal_bytes.
# TYPE node_memory_SwapTotal_bytes gauge
node_memory_SwapTotal_bytes 1.6106123264e+10
# HELP node_memory_Unevictable_bytes Memory information field Unevictable_bytes.
# TYPE node_memory_Unevictable_bytes gauge
node_memory_Unevictable_bytes 1.79564544e+08
# HELP node_memory_VmallocChunk_bytes Memory information field VmallocChunk_bytes.
# TYPE node_memory_VmallocChunk_bytes gauge
node_memory_VmallocChunk_bytes 0
# HELP node_memory_VmallocTotal_bytes Memory information field VmallocTotal_bytes.
# TYPE node_memory_VmallocTotal_bytes gauge
node_memory_VmallocTotal_bytes 3.5184372087808e+13
# HELP node_memory_VmallocUsed_bytes Memory information field VmallocUsed_bytes.
# TYPE node_memory_VmallocUsed_bytes gauge
node_memory_VmallocUsed_bytes 1.17526528e+08
# HELP node_memory_WritebackTmp_bytes Memory information field WritebackTmp_bytes.
# TYPE node_memory_WritebackTmp_bytes gauge
node_memory_WritebackTmp_bytes 0
# HELP node_memory_Writeback_bytes Memory information field Writeback_bytes.
# TYPE node_memory_Writeback_bytes gauge
node_memory_Writeback_bytes 0
# HELP node_netstat_Icmp6_InErrors Statistic Icmp6InErrors.
# TYPE node_netstat_Icmp6_InErrors untyped
node_netstat_Icmp6_InErrors 0
# HELP node_netstat_Icmp6_InMsgs Statistic Icmp6InMsgs.
# TYPE node_netstat_Icmp6_InMsgs untyped
node_netstat_Icmp6_InMsgs 264
# HELP node_netstat_Icmp6_OutMsgs Statistic Icmp6OutMsgs.
# TYPE node_netstat_Icmp6_OutMsgs untyped
node_netstat_Icmp6_OutMsgs 290
# HELP node_netstat_Icmp_InErrors Statistic IcmpInErrors.
# TYPE node_netstat_Icmp_InErrors untyped
node_netstat_Icmp_InErrors 3783
# HELP node_netstat_Icmp_InMsgs Statistic IcmpInMsgs.
# TYPE node_netstat_Icmp_InMsgs untyped
node_netstat_Icmp_InMsgs 7600
# HELP node_netstat_Icmp_OutMsgs Statistic IcmpOutMsgs.
# TYPE node_netstat_Icmp_OutMsgs untyped
node_netstat_Icmp_OutMsgs 7830
# HELP node_netstat_Ip6_InOctets Statistic Ip6InOctets.
# TYPE node_netstat_Ip6_InOctets untyped
node_netstat_Ip6_InOctets 5.2976282e+07
# HELP node_netstat_Ip6_OutOctets Statistic Ip6OutOctets.
# TYPE node_netstat_Ip6_OutOctets untyped
node_netstat_Ip6_OutOctets 5.2719691e+07
# HELP node_netstat_IpExt_InOctets Statistic IpExtInOctets.
# TYPE node_netstat_IpExt_InOctets untyped
node_netstat_IpExt_InOctets 3.382965874e+09
# HELP node_netstat_IpExt_OutOctets Statistic IpExtOutOctets.
# TYPE node_netstat_IpExt_OutOctets untyped
node_netstat_IpExt_OutOctets 1.44366098e+08
# HELP node_netstat_Ip_Forwarding Statistic IpForwarding.
# TYPE node_netstat_Ip_Forwarding untyped
node_netstat_Ip_Forwarding 1
# HELP node_netstat_TcpExt_ListenDrops Statistic TcpExtListenDrops.
# TYPE node_netstat_TcpExt_ListenDrops untyped
node_netstat_TcpExt_ListenDrops 0
# HELP node_netstat_TcpExt_ListenOverflows Statistic TcpExtListenOverflows.
# TYPE node_netstat_TcpExt_ListenOverflows untyped
node_netstat_TcpExt_ListenOverflows 0
# HELP node_netstat_TcpExt_SyncookiesFailed Statistic TcpExtSyncookiesFailed.
# TYPE node_netstat_TcpExt_SyncookiesFailed untyped
node_netstat_TcpExt_SyncookiesFailed 0
# HELP node_netstat_TcpExt_SyncookiesRecv Statistic TcpExtSyncookiesRecv.
# TYPE node_netstat_TcpExt_SyncookiesRecv untyped
node_netstat_TcpExt_SyncookiesRecv 0
# HELP node_netstat_TcpExt_SyncookiesSent Statistic TcpExtSyncookiesSent.
# TYPE node_netstat_TcpExt_SyncookiesSent untyped
node_netstat_TcpExt_SyncookiesSent 0
# HELP node_netstat_TcpExt_TCPSynRetrans Statistic TcpExtTCPSynRetrans.
# TYPE node_netstat_TcpExt_TCPSynRetrans untyped
node_netstat_TcpExt_TCPSynRetrans 3782
# HELP node_netstat_Tcp_ActiveOpens Statistic TcpActiveOpens.
# TYPE node_netstat_Tcp_ActiveOpens untyped
node_netstat_Tcp_ActiveOpens 12790
# HELP node_netstat_Tcp_CurrEstab Statistic TcpCurrEstab.
# TYPE node_netstat_Tcp_CurrEstab untyped
node_netstat_Tcp_CurrEstab 153
# HELP node_netstat_Tcp_InErrs Statistic TcpInErrs.
# TYPE node_netstat_Tcp_InErrs untyped
node_netstat_Tcp_InErrs 0
# HELP node_netstat_Tcp_InSegs Statistic TcpInSegs.
# TYPE node_netstat_Tcp_InSegs untyped
node_netstat_Tcp_InSegs 1.502805e+06
# HELP node_netstat_Tcp_OutRsts Statistic TcpOutRsts.
# TYPE node_netstat_Tcp_OutRsts untyped
node_netstat_Tcp_OutRsts 5764
# HELP node_netstat_Tcp_OutSegs Statistic TcpOutSegs.
# TYPE node_netstat_Tcp_OutSegs untyped
node_netstat_Tcp_OutSegs 884030
# HELP node_netstat_Tcp_PassiveOpens Statistic TcpPassiveOpens.
# TYPE node_netstat_Tcp_PassiveOpens untyped
node_netstat_Tcp_PassiveOpens 1890
# HELP node_netstat_Tcp_RetransSegs Statistic TcpRetransSegs.
# TYPE node_netstat_Tcp_RetransSegs untyped
node_netstat_Tcp_RetransSegs 4279
# HELP node_netstat_Udp6_InDatagrams Statistic Udp6InDatagrams.
# TYPE node_netstat_Udp6_InDatagrams untyped
node_netstat_Udp6_InDatagrams 8504
# HELP node_netstat_Udp6_InErrors Statistic Udp6InErrors.
# TYPE node_netstat_Udp6_InErrors untyped
node_netstat_Udp6_InErrors 0
# HELP node_netstat_Udp6_NoPorts Statistic Udp6NoPorts.
# TYPE node_netstat_Udp6_NoPorts untyped
node_netstat_Udp6_NoPorts 0
# HELP node_netstat_Udp6_OutDatagrams Statistic Udp6OutDatagrams.
# TYPE node_netstat_Udp6_OutDatagrams untyped
node_netstat_Udp6_OutDatagrams 7311
# HELP node_netstat_Udp6_RcvbufErrors Statistic Udp6RcvbufErrors.
# TYPE node_netstat_Udp6_RcvbufErrors untyped
node_netstat_Udp6_RcvbufErrors 0
# HELP node_netstat_Udp6_SndbufErrors Statistic Udp6SndbufErrors.
# TYPE node_netstat_Udp6_SndbufErrors untyped
node_netstat_Udp6_SndbufErrors 0
# HELP node_netstat_UdpLite6_InErrors Statistic UdpLite6InErrors.
# TYPE node_netstat_UdpLite6_InErrors untyped
node_netstat_UdpLite6_InErrors 0
# HELP node_netstat_UdpLite_InErrors Statistic UdpLiteInErrors.
# TYPE node_netstat_UdpLite_InErrors untyped
node_netstat_UdpLite_InErrors 0
# HELP node_netstat_Udp_InDatagrams Statistic UdpInDatagrams.
# TYPE node_netstat_Udp_InDatagrams untyped
node_netstat_Udp_InDatagrams 936905
# HELP node_netstat_Udp_InErrors Statistic UdpInErrors.
# TYPE node_netstat_Udp_InErrors untyped
node_netstat_Udp_InErrors 53193
# HELP node_netstat_Udp_NoPorts Statistic UdpNoPorts.
# TYPE node_netstat_Udp_NoPorts untyped
node_netstat_Udp_NoPorts 287
# HELP node_netstat_Udp_OutDatagrams Statistic UdpOutDatagrams.
# TYPE node_netstat_Udp_OutDatagrams untyped
node_netstat_Udp_OutDatagrams 196573
# HELP node_netstat_Udp_RcvbufErrors Statistic UdpRcvbufErrors.
# TYPE node_netstat_Udp_RcvbufErrors untyped
node_netstat_Udp_RcvbufErrors 53193
# HELP node_netstat_Udp_SndbufErrors Statistic UdpSndbufErrors.
# TYPE node_netstat_Udp_SndbufErrors untyped
node_netstat_Udp_SndbufErrors 0
# HELP node_network_address_assign_type address_assign_type value of /sys/class/net/<iface>.
# TYPE node_network_address_assign_type gauge
node_network_address_assign_type{device="docker0"} 3
node_network_address_assign_type{device="enp3s0"} 0
node_network_address_assign_type{device="lo"} 0
node_network_address_assign_type{device="wlp2s0"} 3
# HELP node_network_carrier carrier value of /sys/class/net/<iface>.
# TYPE node_network_carrier gauge
node_network_carrier{device="docker0"} 0
node_network_carrier{device="enp3s0"} 1
node_network_carrier{device="lo"} 1
node_network_carrier{device="wlp2s0"} 0
# HELP node_network_carrier_changes_total carrier_changes_total value of /sys/class/net/<iface>.
# TYPE node_network_carrier_changes_total counter
node_network_carrier_changes_total{device="docker0"} 1
node_network_carrier_changes_total{device="enp3s0"} 2
node_network_carrier_changes_total{device="lo"} 0
node_network_carrier_changes_total{device="wlp2s0"} 1
# HELP node_network_carrier_down_changes_total carrier_down_changes_total value of /sys/class/net/<iface>.
# TYPE node_network_carrier_down_changes_total counter
node_network_carrier_down_changes_total{device="docker0"} 1
node_network_carrier_down_changes_total{device="enp3s0"} 1
node_network_carrier_down_changes_total{device="lo"} 0
node_network_carrier_down_changes_total{device="wlp2s0"} 1
# HELP node_network_carrier_up_changes_total carrier_up_changes_total value of /sys/class/net/<iface>.
# TYPE node_network_carrier_up_changes_total counter
node_network_carrier_up_changes_total{device="docker0"} 0
node_network_carrier_up_changes_total{device="enp3s0"} 1
node_network_carrier_up_changes_total{device="lo"} 0
node_network_carrier_up_changes_total{device="wlp2s0"} 0
# HELP node_network_device_id device_id value of /sys/class/net/<iface>.
# TYPE node_network_device_id gauge
node_network_device_id{device="docker0"} 0
node_network_device_id{device="enp3s0"} 0
node_network_device_id{device="lo"} 0
node_network_device_id{device="wlp2s0"} 0
# HELP node_network_dormant dormant value of /sys/class/net/<iface>.
# TYPE node_network_dormant gauge
node_network_dormant{device="docker0"} 0
node_network_dormant{device="enp3s0"} 0
node_network_dormant{device="lo"} 0
node_network_dormant{device="wlp2s0"} 0
# HELP node_network_flags flags value of /sys/class/net/<iface>.
# TYPE node_network_flags gauge
node_network_flags{device="docker0"} 4099
node_network_flags{device="enp3s0"} 4099
node_network_flags{device="lo"} 9
node_network_flags{device="wlp2s0"} 4099
# HELP node_network_iface_id iface_id value of /sys/class/net/<iface>.
# TYPE node_network_iface_id gauge
node_network_iface_id{device="docker0"} 4
node_network_iface_id{device="enp3s0"} 2
node_network_iface_id{device="lo"} 1
node_network_iface_id{device="wlp2s0"} 3
# HELP node_network_iface_link iface_link value of /sys/class/net/<iface>.
# TYPE node_network_iface_link gauge
node_network_iface_link{device="docker0"} 4
node_network_iface_link{device="enp3s0"} 2
node_network_iface_link{device="lo"} 1
node_network_iface_link{device="wlp2s0"} 3
# HELP node_network_iface_link_mode iface_link_mode value of /sys/class/net/<iface>.
# TYPE node_network_iface_link_mode gauge
node_network_iface_link_mode{device="docker0"} 0
node_network_iface_link_mode{device="enp3s0"} 0
node_network_iface_link_mode{device="lo"} 0
node_network_iface_link_mode{device="wlp2s0"} 1
# HELP node_network_info Non-numeric data from /sys/class/net/<iface>, value is always 1.
# TYPE node_network_info gauge
node_network_info{address="00:00:00:00:00:00",broadcast="00:00:00:00:00:00",device="lo",duplex="",ifalias="",operstate="unknown"} 1
node_network_info{address="02:42:a2:82:70:f7",broadcast="ff:ff:ff:ff:ff:ff",device="docker0",duplex="unknown",ifalias="",operstate="down"} 1
node_network_info{address="2c:4d:54:bd:bb:f1",broadcast="ff:ff:ff:ff:ff:ff",device="enp3s0",duplex="full",ifalias="",operstate="up"} 1
node_network_info{address="a6:3f:47:dd:ea:22",broadcast="ff:ff:ff:ff:ff:ff",device="wlp2s0",duplex="",ifalias="",operstate="down"} 1
# HELP node_network_mtu_bytes mtu_bytes value of /sys/class/net/<iface>.
# TYPE node_network_mtu_bytes gauge
node_network_mtu_bytes{device="docker0"} 1500
node_network_mtu_bytes{device="enp3s0"} 1500
node_network_mtu_bytes{device="lo"} 65536
node_network_mtu_bytes{device="wlp2s0"} 1500
# HELP node_network_name_assign_type name_assign_type value of /sys/class/net/<iface>.
# TYPE node_network_name_assign_type gauge
node_network_name_assign_type{device="docker0"} 3
node_network_name_assign_type{device="enp3s0"} 4
node_network_name_assign_type{device="wlp2s0"} 4
# HELP node_network_net_dev_group net_dev_group value of /sys/class/net/<iface>.
# TYPE node_network_net_dev_group gauge
node_network_net_dev_group{device="docker0"} 0
node_network_net_dev_group{device="enp3s0"} 0
node_network_net_dev_group{device="lo"} 0
node_network_net_dev_group{device="wlp2s0"} 0
# HELP node_network_protocol_type protocol_type value of /sys/class/net/<iface>.
# TYPE node_network_protocol_type gauge
node_network_protocol_type{device="docker0"} 1
node_network_protocol_type{device="enp3s0"} 1
node_network_protocol_type{device="lo"} 772
node_network_protocol_type{device="wlp2s0"} 1
# HELP node_network_receive_bytes_total Network device statistic receive_bytes.
# TYPE node_network_receive_bytes_total counter
node_network_receive_bytes_total{device="docker0"} 0
node_network_receive_bytes_total{device="enp3s0"} 3.406781643e+09
node_network_receive_bytes_total{device="lo"} 8.021837e+07
node_network_receive_bytes_total{device="wlp2s0"} 0
# HELP node_network_receive_compressed_total Network device statistic receive_compressed.
# TYPE node_network_receive_compressed_total counter
node_network_receive_compressed_total{device="docker0"} 0
node_network_receive_compressed_total{device="enp3s0"} 0
node_network_receive_compressed_total{device="lo"} 0
node_network_receive_compressed_total{device="wlp2s0"} 0
# HELP node_network_receive_drop_total Network device statistic receive_drop.
# TYPE node_network_receive_drop_total counter
node_network_receive_drop_total{device="docker0"} 0
node_network_receive_drop_total{device="enp3s0"} 16427
node_network_receive_drop_total{device="lo"} 0
node_network_receive_drop_total{device="wlp2s0"} 0
# HELP node_network_receive_errs_total Network device statistic receive_errs.
# TYPE node_network_receive_errs_total counter
node_network_receive_errs_total{device="docker0"} 0
node_network_receive_errs_total{device="enp3s0"} 0
node_network_receive_errs_total{device="lo"} 0
node_network_receive_errs_total{device="wlp2s0"} 0
# HELP node_network_receive_fifo_total Network device statistic receive_fifo.
# TYPE node_network_receive_fifo_total counter
node_network_receive_fifo_total{device="docker0"} 0
node_network_receive_fifo_total{device="enp3s0"} 0
node_network_receive_fifo_total{device="lo"} 0
node_network_receive_fifo_total{device="wlp2s0"} 0
# HELP node_network_receive_frame_total Network device statistic receive_frame.
# TYPE node_network_receive_frame_total counter
node_network_receive_frame_total{device="docker0"} 0
node_network_receive_frame_total{device="enp3s0"} 0
node_network_receive_frame_total{device="lo"} 0
node_network_receive_frame_total{device="wlp2s0"} 0
# HELP node_network_receive_multicast_total Network device statistic receive_multicast.
# TYPE node_network_receive_multicast_total counter
node_network_receive_multicast_total{device="docker0"} 0
node_network_receive_multicast_total{device="enp3s0"} 10348
node_network_receive_multicast_total{device="lo"} 0
node_network_receive_multicast_total{device="wlp2s0"} 0
# HELP node_network_receive_packets_total Network device statistic receive_packets.
# TYPE node_network_receive_packets_total counter
node_network_receive_packets_total{device="docker0"} 0
node_network_receive_packets_total{device="enp3s0"} 2.682605e+06
node_network_receive_packets_total{device="lo"} 105428
node_network_receive_packets_total{device="wlp2s0"} 0
# HELP node_network_speed_bytes speed_bytes value of /sys/class/net/<iface>.
# TYPE node_network_speed_bytes gauge
node_network_speed_bytes{device="docker0"} -125000
node_network_speed_bytes{device="enp3s0"} 1.25e+08
# HELP node_network_transmit_bytes_total Network device statistic transmit_bytes.
# TYPE node_network_transmit_bytes_total counter
node_network_transmit_bytes_total{device="docker0"} 0
node_network_transmit_bytes_total{device="enp3s0"} 1.31572572e+08
node_network_transmit_bytes_total{device="lo"} 8.021837e+07
node_network_transmit_bytes_total{device="wlp2s0"} 0
# HELP node_network_transmit_carrier_total Network device statistic transmit_carrier.
# TYPE node_network_transmit_carrier_total counter
node_network_transmit_carrier_total{device="docker0"} 0
node_network_transmit_carrier_total{device="enp3s0"} 0
node_network_transmit_carrier_total{device="lo"} 0
node_network_transmit_carrier_total{device="wlp2s0"} 0
# HELP node_network_transmit_colls_total Network device statistic transmit_colls.
# TYPE node_network_transmit_colls_total counter
node_network_transmit_colls_total{device="docker0"} 0
node_network_transmit_colls_total{device="enp3s0"} 0
node_network_transmit_colls_total{device="lo"} 0
node_network_transmit_colls_total{device="wlp2s0"} 0
# HELP node_network_transmit_compressed_total Network device statistic transmit_compressed.
# TYPE node_network_transmit_compressed_total counter
node_network_transmit_compressed_total{device="docker0"} 0
node_network_transmit_compressed_total{device="enp3s0"} 0
node_network_transmit_compressed_total{device="lo"} 0
node_network_transmit_compressed_total{device="wlp2s0"} 0
# HELP node_network_transmit_drop_total Network device statistic transmit_drop.
# TYPE node_network_transmit_drop_total counter
node_network_transmit_drop_total{device="docker0"} 0
node_network_transmit_drop_total{device="enp3s0"} 0
node_network_transmit_drop_total{device="lo"} 0
node_network_transmit_drop_total{device="wlp2s0"} 0
# HELP node_network_transmit_errs_total Network device statistic transmit_errs.
# TYPE node_network_transmit_errs_total counter
node_network_transmit_errs_total{device="docker0"} 0
node_network_transmit_errs_total{device="enp3s0"} 0
node_network_transmit_errs_total{device="lo"} 0
node_network_transmit_errs_total{device="wlp2s0"} 0
# HELP node_network_transmit_fifo_total Network device statistic transmit_fifo.
# TYPE node_network_transmit_fifo_total counter
node_network_transmit_fifo_total{device="docker0"} 0
node_network_transmit_fifo_total{device="enp3s0"} 0
node_network_transmit_fifo_total{device="lo"} 0
node_network_transmit_fifo_total{device="wlp2s0"} 0
# HELP node_network_transmit_packets_total Network device statistic transmit_packets.
# TYPE node_network_transmit_packets_total counter
node_network_transmit_packets_total{device="docker0"} 0
node_network_transmit_packets_total{device="enp3s0"} 1.013823e+06
node_network_transmit_packets_total{device="lo"} 105428
node_network_transmit_packets_total{device="wlp2s0"} 0
# HELP node_network_transmit_queue_length transmit_queue_length value of /sys/class/net/<iface>.
# TYPE node_network_transmit_queue_length gauge
node_network_transmit_queue_length{device="docker0"} 0
node_network_transmit_queue_length{device="enp3s0"} 1000
node_network_transmit_queue_length{device="lo"} 1000
node_network_transmit_queue_length{device="wlp2s0"} 1000
# HELP node_network_up Value is 1 if operstate is 'up', 0 otherwise.
# TYPE node_network_up gauge
node_network_up{device="docker0"} 0
node_network_up{device="enp3s0"} 1
node_network_up{device="lo"} 0
node_network_up{device="wlp2s0"} 0
# HELP node_nf_conntrack_entries Number of currently allocated flow entries for connection tracking.
# TYPE node_nf_conntrack_entries gauge
node_nf_conntrack_entries 212
# HELP node_nf_conntrack_entries_limit Maximum size of connection tracking table.
# TYPE node_nf_conntrack_entries_limit gauge
node_nf_conntrack_entries_limit 262144
# HELP node_nf_conntrack_stat_drop Number of packets dropped due to conntrack failure.
# TYPE node_nf_conntrack_stat_drop gauge
node_nf_conntrack_stat_drop 0
# HELP node_nf_conntrack_stat_early_drop Number of dropped conntrack entries to make room for new ones, if maximum table size was reached.
# TYPE node_nf_conntrack_stat_early_drop gauge
node_nf_conntrack_stat_early_drop 0
# HELP node_nf_conntrack_stat_found Number of searched entries which were successful.
# TYPE node_nf_conntrack_stat_found gauge
node_nf_conntrack_stat_found 0
# HELP node_nf_conntrack_stat_ignore Number of packets seen which are already connected to a conntrack entry.
# TYPE node_nf_conntrack_stat_ignore gauge
node_nf_conntrack_stat_ignore 0
# HELP node_nf_conntrack_stat_insert Number of entries inserted into the list.
# TYPE node_nf_conntrack_stat_insert gauge
node_nf_conntrack_stat_insert 0
# HELP node_nf_conntrack_stat_insert_failed Number of entries for which list insertion was attempted but failed.
# TYPE node_nf_conntrack_stat_insert_failed gauge
node_nf_conntrack_stat_insert_failed 0
# HELP node_nf_conntrack_stat_invalid Number of packets seen which can not be tracked.
# TYPE node_nf_conntrack_stat_invalid gauge
node_nf_conntrack_stat_invalid 1764
# HELP node_nf_conntrack_stat_search_restart Number of conntrack table lookups which had to be restarted due to hashtable resizes.
# TYPE node_nf_conntrack_stat_search_restart gauge
node_nf_conntrack_stat_search_restart 471
# HELP node_nvme_info Non-numeric data from /sys/class/nvme/<device>, value is always 1.
# TYPE node_nvme_info gauge
node_nvme_info{device="nvme0",firmware_revision="2B2QEXM7",model="Samsung SSD 970 EVO Plus 250GB",serial="S4EUNX0R509882T",state="live"} 1
# HELP node_power_supply_capacity capacity value of /sys/class/power_supply/<power_supply>.
# TYPE node_power_supply_capacity gauge
node_power_supply_capacity{power_supply="BAT0"} 97
# HELP node_power_supply_charge_ampere charge_ampere value of /sys/class/power_supply/<power_supply>.
# TYPE node_power_supply_charge_ampere gauge
node_power_supply_charge_ampere{power_supply="BAT0"} 2.84
# HELP node_power_supply_charge_full charge_full value of /sys/class/power_supply/<power_supply>.
# TYPE node_power_supply_charge_full gauge
node_power_supply_charge_full{power_supply="BAT0"} 2.927
# HELP node_power_supply_charge_full_design charge_full_design value of /sys/class/power_supply/<power_supply>.
# TYPE node_power_supply_charge_full_design gauge
node_power_supply_charge_full_design{power_supply="BAT0"} 3.3
# HELP node_power_supply_current_ampere current_ampere value of /sys/class/power_supply/<power_supply>.
# TYPE node_power_supply_current_ampere gauge
node_power_supply_current_ampere{power_supply="BAT0"} 0
# HELP node_power_supply_cyclecount cyclecount value of /sys/class/power_supply/<power_supply>.
# TYPE node_power_supply_cyclecount gauge
node_power_supply_cyclecount{power_supply="BAT0"} 33
# HELP node_power_supply_info info of /sys/class/power_supply/<power_supply>.
# TYPE node_power_supply_info gauge
node_power_supply_info{power_supply="AC0",type="Mains"} 1
node_power_supply_info{capacity_level="Normal",manufacturer="Simplo",model_name="SDI ICR18650",power_supply="BAT0",serial_number="123456789",status="Unknown",technology="Li-ion",type="Battery"} 1
# HELP node_power_supply_online online value of /sys/class/power_supply/<power_supply>.
# TYPE node_power_supply_online gauge
node_power_supply_online{power_supply="AC0"} 1
# HELP node_power_supply_present present value of /sys/class/power_supply/<power_supply>.
# TYPE node_power_supply_present gauge
node_power_supply_present{power_supply="BAT0"} 1
# HELP node_power_supply_voltage_min_design voltage_min_design value of /sys/class/power_supply/<power_supply>.
# TYPE node_power_supply_voltage_min_design gauge
node_power_supply_voltage_min_design{power_supply="BAT0"} 14.4
# HELP node_power_supply_voltage_volt voltage_volt value of /sys/class/power_supply/<power_supply>.
# TYPE node_power_supply_voltage_volt gauge
node_power_supply_voltage_volt{power_supply="BAT0"} 16.197
# HELP node_pressure_cpu_waiting_seconds_total Total time in seconds that processes have waited for CPU time
# TYPE node_pressure_cpu_waiting_seconds_total counter
node_pressure_cpu_waiting_seconds_total 952.591696
# HELP node_pressure_io_stalled_seconds_total Total time in seconds no process could make progress due to IO congestion
# TYPE node_pressure_io_stalled_seconds_total counter
node_pressure_io_stalled_seconds_total 115.06024099999999
# HELP node_pressure_io_waiting_seconds_total Total time in seconds that processes have waited due to IO congestion
# TYPE node_pressure_io_waiting_seconds_total counter
node_pressure_io_waiting_seconds_total 129.267378
# HELP node_pressure_memory_stalled_seconds_total Total time in seconds no process could make progress due to memory congestion
# TYPE node_pressure_memory_stalled_seconds_total counter
node_pressure_memory_stalled_seconds_total 0.10413800000000001
# HELP node_pressure_memory_waiting_seconds_total Total time in seconds that processes have waited for memory
# TYPE node_pressure_memory_waiting_seconds_total counter
node_pressure_memory_waiting_seconds_total 0.225958
# HELP node_procs_blocked Number of processes blocked waiting for I/O to complete.
# TYPE node_procs_blocked gauge
node_procs_blocked 0
# HELP node_procs_running Number of processes in runnable state.
# TYPE node_procs_running gauge
node_procs_running 9
# HELP node_schedstat_running_seconds_total Number of seconds CPU spent running a process.
# TYPE node_schedstat_running_seconds_total counter
node_schedstat_running_seconds_total{cpu="0"} 5757.040421394
node_schedstat_running_seconds_total{cpu="1"} 5784.601528291
node_schedstat_running_seconds_total{cpu="2"} 5660.076236114
node_schedstat_running_seconds_total{cpu="3"} 5892.229566249
node_schedstat_running_seconds_total{cpu="4"} 5620.058099571
node_schedstat_running_seconds_total{cpu="5"} 5610.686662733
node_schedstat_running_seconds_total{cpu="6"} 5711.895719013
node_schedstat_running_seconds_total{cpu="7"} 5659.453591294
# HELP node_schedstat_timeslices_total Number of timeslices executed by CPU.
# TYPE node_schedstat_timeslices_total counter
node_schedstat_timeslices_total{cpu="0"} 4.0389176e+07
node_schedstat_timeslices_total{cpu="1"} 3.8442653e+07
node_schedstat_timeslices_total{cpu="2"} 4.1728131e+07
node_schedstat_timeslices_total{cpu="3"} 3.6516561e+07
node_schedstat_timeslices_total{cpu="4"} 3.5138727e+07
node_schedstat_timeslices_total{cpu="5"} 3.6587726e+07
node_schedstat_timeslices_total{cpu="6"} 3.7422586e+07
node_schedstat_timeslices_total{cpu="7"} 3.5589016e+07
# HELP node_schedstat_waiting_seconds_total Number of seconds spent by processing waiting for this CPU.
# TYPE node_schedstat_waiting_seconds_total counter
node_schedstat_waiting_seconds_total{cpu="0"} 420.142696284
node_schedstat_waiting_seconds_total{cpu="1"} 426.914112955
node_schedstat_waiting_seconds_total{cpu="2"} 506.533561941
node_schedstat_waiting_seconds_total{cpu="3"} 459.257705193
node_schedstat_waiting_seconds_total{cpu="4"} 374.9672294
node_schedstat_waiting_seconds_total{cpu="5"} 409.855091882
node_schedstat_waiting_seconds_total{cpu="6"} 408.775293619
node_schedstat_waiting_seconds_total{cpu="7"} 431.381659827
# HELP node_scrape_collector_duration_seconds node_exporter: Duration of a collector scrape.
# TYPE node_scrape_collector_duration_seconds gauge
node_scrape_collector_duration_seconds{collector="arp"} 0.000499275
node_scrape_collector_duration_seconds{collector="bcache"} 1.4967e-05
node_scrape_collector_duration_seconds{collector="bonding"} 2.829e-05
node_scrape_collector_duration_seconds{collector="btrfs"} 3.316e-05
node_scrape_collector_duration_seconds{collector="conntrack"} 0.002176922
node_scrape_collector_duration_seconds{collector="cpu"} 0.00204173
node_scrape_collector_duration_seconds{collector="cpufreq"} 0.004234606
node_scrape_collector_duration_seconds{collector="diskstats"} 0.001069181
node_scrape_collector_duration_seconds{collector="edac"} 8.6737e-05
node_scrape_collector_duration_seconds{collector="entropy"} 0.000164657
node_scrape_collector_duration_seconds{collector="fibrechannel"} 2.1435e-05
node_scrape_collector_duration_seconds{collector="filefd"} 0.000212305
node_scrape_collector_duration_seconds{collector="filesystem"} 0.001816571
node_scrape_collector_duration_seconds{collector="hwmon"} 0.061490689
node_scrape_collector_duration_seconds{collector="infiniband"} 0.001069341
node_scrape_collector_duration_seconds{collector="ipvs"} 4.2691e-05
node_scrape_collector_duration_seconds{collector="loadavg"} 0.000195156
node_scrape_collector_duration_seconds{collector="mdadm"} 4.2968e-05
node_scrape_collector_duration_seconds{collector="meminfo"} 0.003224156
node_scrape_collector_duration_seconds{collector="netclass"} 0.006039754
node_scrape_collector_duration_seconds{collector="netdev"} 0.00244456
node_scrape_collector_duration_seconds{collector="netstat"} 0.002713157
node_scrape_collector_duration_seconds{collector="nfs"} 0.000129799
node_scrape_collector_duration_seconds{collector="nfsd"} 0.000873343
node_scrape_collector_duration_seconds{collector="nvme"} 0.000204266
node_scrape_collector_duration_seconds{collector="powersupplyclass"} 0.002306189
node_scrape_collector_duration_seconds{collector="pressure"} 0.001319107
node_scrape_collector_duration_seconds{collector="rapl"} 0.001472865
node_scrape_collector_duration_seconds{collector="schedstat"} 0.001113825
node_scrape_collector_duration_seconds{collector="sockstat"} 0.002423427
node_scrape_collector_duration_seconds{collector="softnet"} 0.001006489
node_scrape_collector_duration_seconds{collector="stat"} 0.001241398
node_scrape_collector_duration_seconds{collector="tapestats"} 5.592e-05
node_scrape_collector_duration_seconds{collector="textfile"} 1.0927e-05
node_scrape_collector_duration_seconds{collector="thermal_zone"} 0.004179061
node_scrape_collector_duration_seconds{collector="time"} 0.001066297
node_scrape_collector_duration_seconds{collector="timex"} 2.6836e-05
node_scrape_collector_duration_seconds{collector="udp_queues"} 0.000592087
node_scrape_collector_duration_seconds{collector="uname"} 2.7055e-05
node_scrape_collector_duration_seconds{collector="vmstat"} 0.001243914
node_scrape_collector_duration_seconds{collector="xfs"} 0.000912681
node_scrape_collector_duration_seconds{collector="zfs"} 0.000563869
# HELP node_scrape_collector_success node_exporter: Whether a collector succeeded.
# TYPE node_scrape_collector_success gauge
node_scrape_collector_success{collector="arp"} 1
node_scrape_collector_success{collector="bcache"} 1
node_scrape_collector_success{collector="bonding"} 0
node_scrape_collector_success{collector="btrfs"} 1
node_scrape_collector_success{collector="conntrack"} 1
node_scrape_collector_success{collector="cpu"} 1
node_scrape_collector_success{collector="cpufreq"} 1
node_scrape_collector_success{collector="diskstats"} 1
node_scrape_collector_success{collector="edac"} 1
node_scrape_collector_success{collector="entropy"} 1
node_scrape_collector_success{collector="fibrechannel"} 0
node_scrape_collector_success{collector="filefd"} 1
node_scrape_collector_success{collector="filesystem"} 1
node_scrape_collector_success{collector="hwmon"} 1
node_scrape_collector_success{collector="infiniband"} 0
node_scrape_collector_success{collector="ipvs"} 0
node_scrape_collector_success{collector="loadavg"} 1
node_scrape_collector_success{collector="mdadm"} 0
node_scrape_collector_success{collector="meminfo"} 1
node_scrape_collector_success{collector="netclass"} 1
node_scrape_collector_success{collector="netdev"} 1
node_scrape_collector_success{collector="netstat"} 1
node_scrape_collector_success{collector="nfs"} 0
node_scrape_collector_success{collector="nfsd"} 0
node_scrape_collector_success{collector="nvme"} 1
node_scrape_collector_success{collector="powersupplyclass"} 1
node_scrape_collector_success{collector="pressure"} 1
node_scrape_collector_success{collector="rapl"} 0
node_scrape_collector_success{collector="schedstat"} 1
node_scrape_collector_success{collector="sockstat"} 1
node_scrape_collector_success{collector="softnet"} 1
node_scrape_collector_success{collector="stat"} 1
node_scrape_collector_success{collector="tapestats"} 0
node_scrape_collector_success{collector="textfile"} 1
node_scrape_collector_success{collector="thermal_zone"} 1
node_scrape_collector_success{collector="time"} 1
node_scrape_collector_success{collector="timex"} 1
node_scrape_collector_success{collector="udp_queues"} 1
node_scrape_collector_success{collector="uname"} 1
node_scrape_collector_success{collector="vmstat"} 1
node_scrape_collector_success{collector="xfs"} 1
node_scrape_collector_success{collector="zfs"} 0
# HELP node_sockstat_FRAG6_inuse Number of FRAG6 sockets in state inuse.
# TYPE node_sockstat_FRAG6_inuse gauge
node_sockstat_FRAG6_inuse 0
# HELP node_sockstat_FRAG6_memory Number of FRAG6 sockets in state memory.
# TYPE node_sockstat_FRAG6_memory gauge
node_sockstat_FRAG6_memory 0
# HELP node_sockstat_FRAG_inuse Number of FRAG sockets in state inuse.
# TYPE node_sockstat_FRAG_inuse gauge
node_sockstat_FRAG_inuse 0
# HELP node_sockstat_FRAG_memory Number of FRAG sockets in state memory.
# TYPE node_sockstat_FRAG_memory gauge
node_sockstat_FRAG_memory 0
# HELP node_sockstat_RAW6_inuse Number of RAW6 sockets in state inuse.
# TYPE node_sockstat_RAW6_inuse gauge
node_sockstat_RAW6_inuse 1
# HELP node_sockstat_RAW_inuse Number of RAW sockets in state inuse.
# TYPE node_sockstat_RAW_inuse gauge
node_sockstat_RAW_inuse 0
# HELP node_sockstat_TCP6_inuse Number of TCP6 sockets in state inuse.
# TYPE node_sockstat_TCP6_inuse gauge
node_sockstat_TCP6_inuse 18
# HELP node_sockstat_TCP_alloc Number of TCP sockets in state alloc.
# TYPE node_sockstat_TCP_alloc gauge
node_sockstat_TCP_alloc 228
# HELP node_sockstat_TCP_inuse Number of TCP sockets in state inuse.
# TYPE node_sockstat_TCP_inuse gauge
node_sockstat_TCP_inuse 210
# HELP node_sockstat_TCP_mem Number of TCP sockets in state mem.
# TYPE node_sockstat_TCP_mem gauge
node_sockstat_TCP_mem 16
# HELP node_sockstat_TCP_mem_bytes Number of TCP sockets in state mem_bytes.
# TYPE node_sockstat_TCP_mem_bytes gauge
node_sockstat_TCP_mem_bytes 65536
# HELP node_sockstat_TCP_orphan Number of TCP sockets in state orphan.
# TYPE node_sockstat_TCP_orphan gauge
node_sockstat_TCP_orphan 0
# HELP node_sockstat_TCP_tw Number of TCP sockets in state tw.
# TYPE node_sockstat_TCP_tw gauge
node_sockstat_TCP_tw 7
# HELP node_sockstat_UDP6_inuse Number of UDP6 sockets in state inuse.
# TYPE node_sockstat_UDP6_inuse gauge
node_sockstat_UDP6_inuse 3
# HELP node_sockstat_UDPLITE6_inuse Number of UDPLITE6 sockets in state inuse.
# TYPE node_sockstat_UDPLITE6_inuse gauge
node_sockstat_UDPLITE6_inuse 0
# HELP node_sockstat_UDPLITE_inuse Number of UDPLITE sockets in state inuse.
# TYPE node_sockstat_UDPLITE_inuse gauge
node_sockstat_UDPLITE_inuse 0
# HELP node_sockstat_UDP_inuse Number of UDP sockets in state inuse.
# TYPE node_sockstat_UDP_inuse gauge
node_sockstat_UDP_inuse 9
# HELP node_sockstat_UDP_mem Number of UDP sockets in state mem.
# TYPE node_sockstat_UDP_mem gauge
node_sockstat_UDP_mem 10
# HELP node_sockstat_UDP_mem_bytes Number of UDP sockets in state mem_bytes.
# TYPE node_sockstat_UDP_mem_bytes gauge
node_sockstat_UDP_mem_bytes 40960
# HELP node_sockstat_sockets_used Number of IPv4 sockets in use.
# TYPE node_sockstat_sockets_used gauge
node_sockstat_sockets_used 1491
# HELP node_softnet_dropped_total Number of dropped packets
# TYPE node_softnet_dropped_total counter
node_softnet_dropped_total{cpu="0"} 0
node_softnet_dropped_total{cpu="1"} 0
node_softnet_dropped_total{cpu="2"} 0
node_softnet_dropped_total{cpu="3"} 0
node_softnet_dropped_total{cpu="4"} 0
node_softnet_dropped_total{cpu="5"} 0
node_softnet_dropped_total{cpu="6"} 0
node_softnet_dropped_total{cpu="7"} 0
# HELP node_softnet_processed_total Number of processed packets
# TYPE node_softnet_processed_total counter
node_softnet_processed_total{cpu="0"} 13006
node_softnet_processed_total{cpu="1"} 13988
node_softnet_processed_total{cpu="2"} 13066
node_softnet_processed_total{cpu="3"} 12355
node_softnet_processed_total{cpu="4"} 2.455224e+06
node_softnet_processed_total{cpu="5"} 13552
node_softnet_processed_total{cpu="6"} 13223
node_softnet_processed_total{cpu="7"} 12939
# HELP node_softnet_times_squeezed_total Number of times processing packets ran out of quota
# TYPE node_softnet_times_squeezed_total counter
node_softnet_times_squeezed_total{cpu="0"} 0
node_softnet_times_squeezed_total{cpu="1"} 0
node_softnet_times_squeezed_total{cpu="2"} 0
node_softnet_times_squeezed_total{cpu="3"} 0
node_softnet_times_squeezed_total{cpu="4"} 0
node_softnet_times_squeezed_total{cpu="5"} 0
node_softnet_times_squeezed_total{cpu="6"} 0
node_softnet_times_squeezed_total{cpu="7"} 0
# HELP node_textfile_scrape_error 1 if there was an error opening or reading a file, 0 otherwise
# TYPE node_textfile_scrape_error gauge
node_textfile_scrape_error 0
# HELP node_thermal_zone_temp Zone temperature in Celsius
# TYPE node_thermal_zone_temp gauge
node_thermal_zone_temp{type="acpitz",zone="0"} 51
node_thermal_zone_temp{type="iwlwifi_1",zone="3"} 41
node_thermal_zone_temp{type="pch_skylake",zone="1"} 55.5
node_thermal_zone_temp{type="x86_pkg_temp",zone="2"} 50
# HELP node_time_seconds System time in seconds since epoch (1970).
# TYPE node_time_seconds gauge
node_time_seconds 1.6387348116764052e+09
# HELP node_time_zone_offset_seconds System time zone offset in seconds.
# TYPE node_time_zone_offset_seconds gauge
node_time_zone_offset_seconds{time_zone="EET"} 7200
# HELP node_timex_estimated_error_seconds Estimated error in seconds.
# TYPE node_timex_estimated_error_seconds gauge
node_timex_estimated_error_seconds 0
# HELP node_timex_frequency_adjustment_ratio Local clock frequency adjustment.
# TYPE node_timex_frequency_adjustment_ratio gauge
node_timex_frequency_adjustment_ratio 1.000000812866211
# HELP node_timex_loop_time_constant Phase-locked loop time constant.
# TYPE node_timex_loop_time_constant gauge
node_timex_loop_time_constant 7
# HELP node_timex_maxerror_seconds Maximum error in seconds.
# TYPE node_timex_maxerror_seconds gauge
node_timex_maxerror_seconds 1.0075
# HELP node_timex_offset_seconds Time offset in between local system and reference clock.
# TYPE node_timex_offset_seconds gauge
node_timex_offset_seconds 6.77e-07
# HELP node_timex_pps_calibration_total Pulse per second count of calibration intervals.
# TYPE node_timex_pps_calibration_total counter
node_timex_pps_calibration_total 0
# HELP node_timex_pps_error_total Pulse per second count of calibration errors.
# TYPE node_timex_pps_error_total counter
node_timex_pps_error_total 0
# HELP node_timex_pps_frequency_hertz Pulse per second frequency.
# TYPE node_timex_pps_frequency_hertz gauge
node_timex_pps_frequency_hertz 0
# HELP node_timex_pps_jitter_seconds Pulse per second jitter.
# TYPE node_timex_pps_jitter_seconds gauge
node_timex_pps_jitter_seconds 0
# HELP node_timex_pps_jitter_total Pulse per second count of jitter limit exceeded events.
# TYPE node_timex_pps_jitter_total counter
node_timex_pps_jitter_total 0
# HELP node_timex_pps_shift_seconds Pulse per second interval duration.
# TYPE node_timex_pps_shift_seconds gauge
node_timex_pps_shift_seconds 0
# HELP node_timex_pps_stability_exceeded_total Pulse per second count of stability limit exceeded events.
# TYPE node_timex_pps_stability_exceeded_total counter
node_timex_pps_stability_exceeded_total 0
# HELP node_timex_pps_stability_hertz Pulse per second stability, average of recent frequency changes.
# TYPE node_timex_pps_stability_hertz gauge
node_timex_pps_stability_hertz 0
# HELP node_timex_status Value of the status array bits.
# TYPE node_timex_status gauge
node_timex_status 8193
# HELP node_timex_sync_status Is clock synchronized to a reliable server (1 = yes, 0 = no).
# TYPE node_timex_sync_status gauge
node_timex_sync_status 1
# HELP node_timex_tai_offset_seconds International Atomic Time (TAI) offset.
# TYPE node_timex_tai_offset_seconds gauge
node_timex_tai_offset_seconds 0
# HELP node_timex_tick_seconds Seconds between clock ticks.
# TYPE node_timex_tick_seconds gauge
node_timex_tick_seconds 0.01
# HELP node_udp_queues Number of allocated memory in the kernel for UDP datagrams in bytes.
# TYPE node_udp_queues gauge
node_udp_queues{ip="v4",queue="rx"} 0
node_udp_queues{ip="v4",queue="tx"} 0
node_udp_queues{ip="v6",queue="rx"} 0
node_udp_queues{ip="v6",queue="tx"} 0
# HELP node_uname_info Labeled system information as provided by the uname system call.
# TYPE node_uname_info gauge
node_uname_info{domainname="(none)",machine="x86_64",nodename="manjaro",release="5.10.79-1-MANJARO",sysname="Linux",version="#1 SMP PREEMPT Fri Nov 12 20:26:09 UTC 2021"} 1
# HELP node_vmstat_oom_kill /proc/vmstat information field oom_kill.
# TYPE node_vmstat_oom_kill untyped
node_vmstat_oom_kill 0
# HELP node_vmstat_pgfault /proc/vmstat information field pgfault.
# TYPE node_vmstat_pgfault untyped
node_vmstat_pgfault 9.75835233e+08
# HELP node_vmstat_pgmajfault /proc/vmstat information field pgmajfault.
# TYPE node_vmstat_pgmajfault untyped
node_vmstat_pgmajfault 20216
# HELP node_vmstat_pgpgin /proc/vmstat information field pgpgin.
# TYPE node_vmstat_pgpgin untyped
node_vmstat_pgpgin 5.377164e+06
# HELP node_vmstat_pgpgout /proc/vmstat information field pgpgout.
# TYPE node_vmstat_pgpgout untyped
node_vmstat_pgpgout 1.0332078e+07
# HELP node_vmstat_pswpin /proc/vmstat information field pswpin.
# TYPE node_vmstat_pswpin untyped
node_vmstat_pswpin 0
# HELP node_vmstat_pswpout /proc/vmstat information field pswpout.
# TYPE node_vmstat_pswpout untyped
node_vmstat_pswpout 0
# HELP process_cpu_seconds_total Total user and system CPU time spent in seconds.
# TYPE process_cpu_seconds_total counter
process_cpu_seconds_total 309.9
# HELP process_max_fds Maximum number of open file descriptors.
# TYPE process_max_fds gauge
process_max_fds 1024
# HELP process_open_fds Number of open file descriptors.
# TYPE process_open_fds gauge
process_open_fds 10
# HELP process_resident_memory_bytes Resident memory size in bytes.
# TYPE process_resident_memory_bytes gauge
process_resident_memory_bytes 2.4559616e+07
# HELP process_start_time_seconds Start time of the process since unix epoch in seconds.
# TYPE process_start_time_seconds gauge
process_start_time_seconds 1.63870208212e+09
# HELP process_virtual_memory_bytes Virtual memory size in bytes.
# TYPE process_virtual_memory_bytes gauge
process_virtual_memory_bytes 2.403168256e+09
# HELP process_virtual_memory_max_bytes Maximum amount of virtual memory available in bytes.
# TYPE process_virtual_memory_max_bytes gauge
process_virtual_memory_max_bytes 1.8446744073709552e+19
# HELP promhttp_metric_handler_errors_total Total number of internal errors encountered by the promhttp metric handler.
# TYPE promhttp_metric_handler_errors_total counter
promhttp_metric_handler_errors_total{cause="encoding"} 0
promhttp_metric_handler_errors_total{cause="gathering"} 0
# HELP promhttp_metric_handler_requests_in_flight Current number of scrapes being served.
# TYPE promhttp_metric_handler_requests_in_flight gauge
promhttp_metric_handler_requests_in_flight 1
# HELP promhttp_metric_handler_requests_total Total number of scrapes by HTTP status code.
# TYPE promhttp_metric_handler_requests_total counter
promhttp_metric_handler_requests_total{code="200"} 2183
promhttp_metric_handler_requests_total{code="500"} 0
promhttp_metric_handler_requests_total{code="503"} 0
