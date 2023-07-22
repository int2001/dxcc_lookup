#!/usr/bin/perl -w

use strict;
use Data::Dumper;
use JSON;

use Gearman::Client;
$|=1;

my $client  = Gearman::Client->new(job_servers => ['127.0.0.1:4730']);
my $x=$client->do_task("dxcc_test", "FK8GM");
print Dumper $x;
