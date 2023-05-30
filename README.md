# NSQ Exporter

> This fork fixes an issue with NSQ 1.x.x that led to the unability to fetch metrics. The built image can be found at `beeinventor/nsq_exporter`.

NSQ exporter for prometheus.io, written in go.

## Usage

    docker run -d --name nsq_exporter -l nsqd:nsqd -p 9117:9117 beeinventor/nsq_exporter:latest -nsq.addr=http://nsqd:4151 -collectors=nsqstats

## Building

    make

    OR

    go get -u github.com/beeinventor/nsq_exporter
    go install github.com/beeinventor/nsq_exporter

## Contributing

1.  Fork it!
2.  Create your feature branch: `git checkout -b my-new-feature`
3.  Commit your changes: `git commit -am 'Add some feature'`
4.  Push to the branch: `git push origin my-new-feature`
5.  Submit a pull request

## Credits

- https://github.com/emaincourt/nsq_exporter