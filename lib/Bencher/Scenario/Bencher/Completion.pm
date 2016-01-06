package Bencher::Scenario::Bencher::Completion;

# DATE
# VERSION

use 5.010001;
use strict;
use warnings;

use Bencher::ScenarioUtil::Completion qw(make_completion_participant);

our $scenario = {
    summary => 'Benchmark completion response time, to monitor regression',
    modules => {
    },
    participants => [
        make_completion_participant(
            name=>'optname_common_help',
            cmdline=>"bencher --hel^",
        ),
        make_completion_participant(
            name=>'optname_common_version',
            cmdline=>"bencher --vers^",
        ),
        make_completion_participant(
            name=>'optname_action',
            cmdline=>"bencher --acti^",
        ),
        make_completion_participant(
            name=>'optval_action',
            cmdline=>"bencher --action ^",
        ),
    ],
};

1;
# ABSTRACT:
