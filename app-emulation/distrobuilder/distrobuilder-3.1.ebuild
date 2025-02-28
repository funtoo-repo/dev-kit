# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit go-module linux-info

DESCRIPTION="System container image builder for LXC and LXD"
HOMEPAGE="https://linuxcontainers.org/distrobuilder/introduction/"

EGO_SUM=(
	"bazil.org/fuse v0.0.0-20160811212531-371fbbdaa898/go.mod"
	"cloud.google.com/go v0.26.0/go.mod"
	"github.com/!ada!logics/go-fuzz-headers v0.0.0-20210401092550-0a8691dafd0d/go.mod"
	"github.com/!ada!logics/go-fuzz-headers v0.0.0-20240806141605-e8a1dd7889d6"
	"github.com/!ada!logics/go-fuzz-headers v0.0.0-20240806141605-e8a1dd7889d6/go.mod"
	"github.com/!adam!korcz/go-fuzz-headers v0.0.0-20210312213058-32f4d319f0d2/go.mod"
	"github.com/!azure/go-ansiterm v0.0.0-20170929234023-d6e3b3328b78/go.mod"
	"github.com/!azure/go-ansiterm v0.0.0-20230124172434-306776ec8161"
	"github.com/!azure/go-ansiterm v0.0.0-20230124172434-306776ec8161/go.mod"
	"github.com/!burnt!sushi/toml v0.3.1/go.mod"
	"github.com/!burnt!sushi/toml v1.4.0/go.mod"
	"github.com/!microsoft/go-winio v0.4.15-0.20190919025122-fc70bd9a86b5/go.mod"
	"github.com/!microsoft/go-winio v0.4.15-0.20200113171025-3fe6c5262873/go.mod"
	"github.com/!microsoft/go-winio v0.6.2"
	"github.com/!microsoft/go-winio v0.6.2/go.mod"
	"github.com/!microsoft/hcsshim v0.8.7/go.mod"
	"github.com/!microsoft/hcsshim v0.12.8"
	"github.com/!microsoft/hcsshim v0.12.8/go.mod"
	"github.com/!open!pee!dee!p/depguard v1.0.0/go.mod"
	"github.com/!stack!exchange/wmi v0.0.0-20180116203802-5d049714c4a6/go.mod"
	"github.com/antchfx/xpath v1.3.2"
	"github.com/antchfx/xpath v1.3.2/go.mod"
	"github.com/apex/log v1.4.0/go.mod"
	"github.com/apex/log v1.9.0"
	"github.com/apex/log v1.9.0/go.mod"
	"github.com/apex/logs v0.0.7/go.mod"
	"github.com/apex/logs v1.0.0/go.mod"
	"github.com/aphistic/golf v0.0.0-20180712155816-02c07f170c5a/go.mod"
	"github.com/aphistic/sweet v0.2.0/go.mod"
	"github.com/aws/aws-sdk-go v1.20.6/go.mod"
	"github.com/aybabtme/rgbterm v0.0.0-20170906152045-cc83f3b3ce59/go.mod"
	"github.com/bits-and-blooms/bitset v1.2.0/go.mod"
	"github.com/blang/semver v3.1.0+incompatible/go.mod"
	"github.com/bmatcuk/doublestar/v4 v4.7.1"
	"github.com/bmatcuk/doublestar/v4 v4.7.1/go.mod"
	"github.com/census-instrumentation/opencensus-proto v0.2.1/go.mod"
	"github.com/checkpoint-restore/go-criu/v5 v5.0.0/go.mod"
	"github.com/cilium/ebpf v0.6.2/go.mod"
	"github.com/client9/misspell v0.3.4/go.mod"
	"github.com/cncf/udpa/go v0.0.0-20191209042840-269d4d468f6f/go.mod"
	"github.com/containerd/cgroups v0.0.0-20190919134610-bf292b21730f/go.mod"
	"github.com/containerd/cgroups/v3 v3.0.3"
	"github.com/containerd/cgroups/v3 v3.0.3/go.mod"
	"github.com/containerd/console v0.0.0-20180822173158-c12b1e7919c1/go.mod"
	"github.com/containerd/console v1.0.2/go.mod"
	"github.com/containerd/containerd v1.3.0-beta.2.0.20190828155532-0293cbd26c69/go.mod"
	"github.com/containerd/containerd v1.3.0/go.mod"
	"github.com/containerd/containerd v1.7.23"
	"github.com/containerd/containerd v1.7.23/go.mod"
	"github.com/containerd/continuity v0.0.0-20190426062206-aaeac12a7ffc/go.mod"
	"github.com/containerd/continuity v0.0.0-20200228182428-0f16d7a0959c/go.mod"
	"github.com/containerd/continuity v0.4.3"
	"github.com/containerd/continuity v0.4.3/go.mod"
	"github.com/containerd/errdefs v0.3.0"
	"github.com/containerd/errdefs v0.3.0/go.mod"
	"github.com/containerd/fifo v0.0.0-20190226154929-a9fb20d87448/go.mod"
	"github.com/containerd/go-runc v0.0.0-20180907222934-5a6d9f37cfa3/go.mod"
	"github.com/containerd/log v0.1.0"
	"github.com/containerd/log v0.1.0/go.mod"
	"github.com/containerd/ttrpc v0.0.0-20190828154514-0e0f228740de/go.mod"
	"github.com/containerd/typeurl v0.0.0-20180627222232-a93fcdb778cd/go.mod"
	"github.com/coreos/go-systemd v0.0.0-20190321100706-95778dfbb74e/go.mod"
	"github.com/coreos/go-systemd/v22 v22.3.2/go.mod"
	"github.com/cpuguy83/go-md2man/v2 v2.0.0-20190314233015-f79a8a8ca69d/go.mod"
	"github.com/cpuguy83/go-md2man/v2 v2.0.0/go.mod"
	"github.com/cpuguy83/go-md2man/v2 v2.0.4/go.mod"
	"github.com/cpuguy83/go-md2man/v2 v2.0.5"
	"github.com/cpuguy83/go-md2man/v2 v2.0.5/go.mod"
	"github.com/creack/pty v1.1.9/go.mod"
	"github.com/creack/pty v1.1.18"
	"github.com/creack/pty v1.1.18/go.mod"
	"github.com/cyphar/filepath-securejoin v0.2.2/go.mod"
	"github.com/cyphar/filepath-securejoin v0.2.3/go.mod"
	"github.com/cyphar/filepath-securejoin v0.3.4"
	"github.com/cyphar/filepath-securejoin v0.3.4/go.mod"
	"github.com/davecgh/go-spew v1.1.0/go.mod"
	"github.com/davecgh/go-spew v1.1.1/go.mod"
	"github.com/davecgh/go-spew v1.1.2-0.20180830191138-d8f796af33cc"
	"github.com/davecgh/go-spew v1.1.2-0.20180830191138-d8f796af33cc/go.mod"
	"github.com/distribution/reference v0.6.0"
	"github.com/distribution/reference v0.6.0/go.mod"
	"github.com/docker/distribution v0.0.0-20171011171712-7484e51bf6af/go.mod"
	"github.com/docker/distribution v2.7.1+incompatible/go.mod"
	"github.com/docker/distribution v2.8.3+incompatible"
	"github.com/docker/distribution v2.8.3+incompatible/go.mod"
	"github.com/docker/docker v1.4.2-0.20191101170500-ac7306503d23/go.mod"
	"github.com/docker/docker v27.3.1+incompatible"
	"github.com/docker/docker v27.3.1+incompatible/go.mod"
	"github.com/docker/go-connections v0.4.0/go.mod"
	"github.com/docker/go-connections v0.5.0"
	"github.com/docker/go-connections v0.5.0/go.mod"
	"github.com/docker/go-events v0.0.0-20190806004212-e31b211e4f1c/go.mod"
	"github.com/docker/go-units v0.4.0/go.mod"
	"github.com/docker/go-units v0.5.0"
	"github.com/docker/go-units v0.5.0/go.mod"
	"github.com/docker/libtrust v0.0.0-20160708172513-aabc10ec26b7"
	"github.com/docker/libtrust v0.0.0-20160708172513-aabc10ec26b7/go.mod"
	"github.com/dustin/go-humanize v0.0.0-20171111073723-bb3d318650d4/go.mod"
	"github.com/envoyproxy/go-control-plane v0.9.0/go.mod"
	"github.com/envoyproxy/go-control-plane v0.9.1-0.20191026205805-5f8ba28d4473/go.mod"
	"github.com/envoyproxy/go-control-plane v0.9.4/go.mod"
	"github.com/envoyproxy/protoc-gen-validate v0.1.0/go.mod"
	"github.com/fatih/color v1.6.0/go.mod"
	"github.com/fatih/color v1.7.0/go.mod"
	"github.com/fatih/color v1.9.0/go.mod"
	"github.com/flosch/pongo2/v4 v4.0.2"
	"github.com/flosch/pongo2/v4 v4.0.2/go.mod"
	"github.com/frankban/quicktest v1.11.3/go.mod"
	"github.com/fsnotify/fsnotify v1.4.7/go.mod"
	"github.com/fsouza/go-dockerclient v1.6.4/go.mod"
	"github.com/fsouza/go-dockerclient v1.12.0"
	"github.com/fsouza/go-dockerclient v1.12.0/go.mod"
	"github.com/go-chi/chi/v5 v5.1.0"
	"github.com/go-chi/chi/v5 v5.1.0/go.mod"
	"github.com/go-critic/go-critic v0.3.5-0.20190526074819-1df300866540/go.mod"
	"github.com/go-jose/go-jose/v4 v4.0.4"
	"github.com/go-jose/go-jose/v4 v4.0.4/go.mod"
	"github.com/go-lintpack/lintpack v0.5.2/go.mod"
	"github.com/go-logfmt/logfmt v0.4.0/go.mod"
	"github.com/go-logr/logr v1.2.2/go.mod"
	"github.com/go-logr/logr v1.4.2"
	"github.com/go-logr/logr v1.4.2/go.mod"
	"github.com/go-logr/stdr v1.2.2"
	"github.com/go-logr/stdr v1.2.2/go.mod"
	"github.com/go-ole/go-ole v1.2.1/go.mod"
	"github.com/go-toolsmith/astcast v1.0.0/go.mod"
	"github.com/go-toolsmith/astcopy v1.0.0/go.mod"
	"github.com/go-toolsmith/astequal v0.0.0-20180903214952-dcb477bfacd6/go.mod"
	"github.com/go-toolsmith/astequal v1.0.0/go.mod"
	"github.com/go-toolsmith/astfmt v0.0.0-20180903215011-8f8ee99c3086/go.mod"
	"github.com/go-toolsmith/astfmt v1.0.0/go.mod"
	"github.com/go-toolsmith/astinfo v0.0.0-20180906194353-9809ff7efb21/go.mod"
	"github.com/go-toolsmith/astp v0.0.0-20180903215135-0af7e3c24f30/go.mod"
	"github.com/go-toolsmith/astp v1.0.0/go.mod"
	"github.com/go-toolsmith/pkgload v0.0.0-20181119091011-e9e65178eee8/go.mod"
	"github.com/go-toolsmith/pkgload v1.0.0/go.mod"
	"github.com/go-toolsmith/strparse v1.0.0/go.mod"
	"github.com/go-toolsmith/typep v1.0.0/go.mod"
	"github.com/gobwas/glob v0.2.3/go.mod"
	"github.com/godbus/dbus v0.0.0-20190422162347-ade71ed3457e/go.mod"
	"github.com/godbus/dbus/v5 v5.0.4/go.mod"
	"github.com/gogo/protobuf v1.1.1/go.mod"
	"github.com/gogo/protobuf v1.2.1/go.mod"
	"github.com/gogo/protobuf v1.3.1/go.mod"
	"github.com/gogo/protobuf v1.3.2"
	"github.com/gogo/protobuf v1.3.2/go.mod"
	"github.com/golang/glog v0.0.0-20160126235308-23def4e6c14b/go.mod"
	"github.com/golang/groupcache v0.0.0-20200121045136-8c9f03a8e57e/go.mod"
	"github.com/golang/groupcache v0.0.0-20210331224755-41bb18bfe9da"
	"github.com/golang/groupcache v0.0.0-20210331224755-41bb18bfe9da/go.mod"
	"github.com/golang/mock v1.0.0/go.mod"
	"github.com/golang/mock v1.1.1/go.mod"
	"github.com/golang/protobuf v1.2.0/go.mod"
	"github.com/golang/protobuf v1.3.1/go.mod"
	"github.com/golang/protobuf v1.3.2/go.mod"
	"github.com/golang/protobuf v1.4.0-rc.1/go.mod"
	"github.com/golang/protobuf v1.4.0-rc.1.0.20200221234624-67d41d38c208/go.mod"
	"github.com/golang/protobuf v1.4.0-rc.2/go.mod"
	"github.com/golang/protobuf v1.4.0-rc.4.0.20200313231945-b860323f09d0/go.mod"
	"github.com/golang/protobuf v1.4.0/go.mod"
	"github.com/golang/protobuf v1.4.1/go.mod"
	"github.com/golang/protobuf v1.4.2/go.mod"
	"github.com/golang/protobuf v1.4.3/go.mod"
	"github.com/golang/protobuf v1.5.0/go.mod"
	"github.com/golang/protobuf v1.5.2/go.mod"
	"github.com/golang/protobuf v1.5.4"
	"github.com/golang/protobuf v1.5.4/go.mod"
	"github.com/golangci/check v0.0.0-20180506172741-cfe4005ccda2/go.mod"
	"github.com/golangci/dupl v0.0.0-20180902072040-3e9179ac440a/go.mod"
	"github.com/golangci/errcheck v0.0.0-20181223084120-ef45e06d44b6/go.mod"
	"github.com/golangci/go-misc v0.0.0-20180628070357-927a3d87b613/go.mod"
	"github.com/golangci/go-tools v0.0.0-20190318055746-e32c54105b7c/go.mod"
	"github.com/golangci/goconst v0.0.0-20180610141641-041c5f2b40f3/go.mod"
	"github.com/golangci/gocyclo v0.0.0-20180528134321-2becd97e67ee/go.mod"
	"github.com/golangci/gofmt v0.0.0-20181222123516-0b8337e80d98/go.mod"
	"github.com/golangci/golangci-lint v1.17.2-0.20190909185456-6163a8a79084/go.mod"
	"github.com/golangci/gosec v0.0.0-20190211064107-66fb7fc33547/go.mod"
	"github.com/golangci/ineffassign v0.0.0-20190609212857-42439a7714cc/go.mod"
	"github.com/golangci/lint-1 v0.0.0-20190420132249-ee948d087217/go.mod"
	"github.com/golangci/maligned v0.0.0-20180506175553-b1d89398deca/go.mod"
	"github.com/golangci/misspell v0.0.0-20180809174111-950f5d19e770/go.mod"
	"github.com/golangci/prealloc v0.0.0-20180630174525-215b22d4de21/go.mod"
	"github.com/golangci/revgrep v0.0.0-20180526074752-d9c87f5ffaf0/go.mod"
	"github.com/golangci/unconvert v0.0.0-20180507085042-28b1c447d1f4/go.mod"
	"github.com/google/go-cmp v0.2.0/go.mod"
	"github.com/google/go-cmp v0.3.0/go.mod"
	"github.com/google/go-cmp v0.3.1/go.mod"
	"github.com/google/go-cmp v0.4.0/go.mod"
	"github.com/google/go-cmp v0.5.0/go.mod"
	"github.com/google/go-cmp v0.5.2/go.mod"
	"github.com/google/go-cmp v0.5.3/go.mod"
	"github.com/google/go-cmp v0.5.4/go.mod"
	"github.com/google/go-cmp v0.5.5/go.mod"
	"github.com/google/go-cmp v0.6.0"
	"github.com/google/go-cmp v0.6.0/go.mod"
	"github.com/google/go-github/v56 v56.0.0"
	"github.com/google/go-github/v56 v56.0.0/go.mod"
	"github.com/google/go-querystring v1.1.0"
	"github.com/google/go-querystring v1.1.0/go.mod"
	"github.com/google/gofuzz v1.2.0"
	"github.com/google/gofuzz v1.2.0/go.mod"
	"github.com/google/uuid v1.1.1/go.mod"
	"github.com/google/uuid v1.1.2/go.mod"
	"github.com/google/uuid v1.6.0"
	"github.com/google/uuid v1.6.0/go.mod"
	"github.com/gorilla/mux v1.7.3/go.mod"
	"github.com/gorilla/mux v1.7.4/go.mod"
	"github.com/gorilla/mux v1.8.1"
	"github.com/gorilla/mux v1.8.1/go.mod"
	"github.com/gorilla/securecookie v1.1.2"
	"github.com/gorilla/securecookie v1.1.2/go.mod"
	"github.com/gorilla/websocket v1.5.3"
	"github.com/gorilla/websocket v1.5.3/go.mod"
	"github.com/gostaticanalysis/analysisutil v0.0.0-20190318220348-4088753ea4d3/go.mod"
	"github.com/hashicorp/errwrap v0.0.0-20141028054710-7554cd9344ce/go.mod"
	"github.com/hashicorp/go-multierror v0.0.0-20161216184304-ed905158d874/go.mod"
	"github.com/hashicorp/golang-lru v0.5.1/go.mod"
	"github.com/hashicorp/hcl v0.0.0-20180404174102-ef8a98b0bbce/go.mod"
	"github.com/heroku/docker-registry-client v0.0.0-20181004091502-47ecf50fd8d4/go.mod"
	"github.com/heroku/docker-registry-client v0.0.0-20211012143308-9463674c8930"
	"github.com/heroku/docker-registry-client v0.0.0-20211012143308-9463674c8930/go.mod"
	"github.com/hpcloud/tail v1.0.0/go.mod"
	"github.com/inconshreveable/mousetrap v1.0.0/go.mod"
	"github.com/inconshreveable/mousetrap v1.1.0"
	"github.com/inconshreveable/mousetrap v1.1.0/go.mod"
	"github.com/jeremija/gosubmit v0.2.7"
	"github.com/jeremija/gosubmit v0.2.7/go.mod"
	"github.com/jmespath/go-jmespath v0.0.0-20180206201540-c2b33e8439af/go.mod"
	"github.com/jpillora/backoff v0.0.0-20180909062703-3050d21c67d7/go.mod"
	"github.com/kisielk/errcheck v1.1.0/go.mod"
	"github.com/kisielk/errcheck v1.2.0/go.mod"
	"github.com/kisielk/errcheck v1.5.0/go.mod"
	"github.com/kisielk/gotool v0.0.0-20161130080628-0de1eaf82fa3/go.mod"
	"github.com/kisielk/gotool v1.0.0/go.mod"
	"github.com/klauspost/compress v1.4.0/go.mod"
	"github.com/klauspost/compress v1.4.1/go.mod"
	"github.com/klauspost/compress v1.11.3/go.mod"
	"github.com/klauspost/compress v1.17.11"
	"github.com/klauspost/compress v1.17.11/go.mod"
	"github.com/klauspost/cpuid v0.0.0-20180405133222-e7e905edc00e/go.mod"
	"github.com/klauspost/cpuid v1.2.0/go.mod"
	"github.com/klauspost/pgzip v1.2.4/go.mod"
	"github.com/klauspost/pgzip v1.2.5/go.mod"
	"github.com/klauspost/pgzip v1.2.6"
	"github.com/klauspost/pgzip v1.2.6/go.mod"
	"github.com/konsorten/go-windows-terminal-sequences v1.0.1/go.mod"
	"github.com/konsorten/go-windows-terminal-sequences v1.0.3/go.mod"
	"github.com/kr/fs v0.1.0"
	"github.com/kr/fs v0.1.0/go.mod"
	"github.com/kr/logfmt v0.0.0-20140226030751-b84e30acd515/go.mod"
	"github.com/kr/pretty v0.1.0/go.mod"
	"github.com/kr/pretty v0.2.0/go.mod"
	"github.com/kr/pretty v0.2.1/go.mod"
	"github.com/kr/pty v1.1.1/go.mod"
	"github.com/kr/text v0.1.0/go.mod"
	"github.com/kr/text v0.2.0"
	"github.com/kr/text v0.2.0/go.mod"
	"github.com/logrusorgru/aurora v0.0.0-20181002194514-a7b3b318ed4e/go.mod"
	"github.com/lxc/incus/v6 v6.6.0"
	"github.com/lxc/incus/v6 v6.6.0/go.mod"
	"github.com/magiconair/properties v1.7.6/go.mod"
	"github.com/mattn/go-colorable v0.0.9/go.mod"
	"github.com/mattn/go-colorable v0.1.1/go.mod"
	"github.com/mattn/go-colorable v0.1.2/go.mod"
	"github.com/mattn/go-colorable v0.1.4/go.mod"
	"github.com/mattn/go-colorable v0.1.6/go.mod"
	"github.com/mattn/go-isatty v0.0.3/go.mod"
	"github.com/mattn/go-isatty v0.0.5/go.mod"
	"github.com/mattn/go-isatty v0.0.8/go.mod"
	"github.com/mattn/go-isatty v0.0.11/go.mod"
	"github.com/mattn/go-isatty v0.0.12/go.mod"
	"github.com/mattn/goveralls v0.0.2/go.mod"
	"github.com/mgutz/ansi v0.0.0-20170206155736-9520e82c474b/go.mod"
	"github.com/mitchellh/go-homedir v1.0.0/go.mod"
	"github.com/mitchellh/go-ps v0.0.0-20170309133038-4fdf99ab2936/go.mod"
	"github.com/mitchellh/mapstructure v0.0.0-20180220230111-00c29f56e238/go.mod"
	"github.com/moby/docker-image-spec v1.3.1"
	"github.com/moby/docker-image-spec v1.3.1/go.mod"
	"github.com/moby/patternmatcher v0.6.0"
	"github.com/moby/patternmatcher v0.6.0/go.mod"
	"github.com/moby/sys/mountinfo v0.4.1/go.mod"
	"github.com/moby/sys/mountinfo v0.7.1"
	"github.com/moby/sys/mountinfo v0.7.1/go.mod"
	"github.com/moby/sys/sequential v0.6.0"
	"github.com/moby/sys/sequential v0.6.0/go.mod"
	"github.com/moby/sys/user v0.3.0"
	"github.com/moby/sys/user v0.3.0/go.mod"
	"github.com/moby/sys/userns v0.1.0"
	"github.com/moby/sys/userns v0.1.0/go.mod"
	"github.com/moby/term v0.5.0"
	"github.com/moby/term v0.5.0/go.mod"
	"github.com/mohae/deepcopy v0.0.0-20170929034955-c48cc78d4826"
	"github.com/mohae/deepcopy v0.0.0-20170929034955-c48cc78d4826/go.mod"
	"github.com/morikuni/aec v1.0.0"
	"github.com/morikuni/aec v1.0.0/go.mod"
	"github.com/mozilla/tls-observatory v0.0.0-20180409132520-8791a200eb40/go.mod"
	"github.com/mrunalp/fileutils v0.5.0/go.mod"
	"github.com/mudler/docker-companion v0.4.6-0.20211015133729-bd4704fad372"
	"github.com/mudler/docker-companion v0.4.6-0.20211015133729-bd4704fad372/go.mod"
	"github.com/muhlemmer/gu v0.3.1"
	"github.com/muhlemmer/gu v0.3.1/go.mod"
	"github.com/muhlemmer/httpforwarded v0.1.0"
	"github.com/muhlemmer/httpforwarded v0.1.0/go.mod"
	"github.com/nbutton23/zxcvbn-go v0.0.0-20160627004424-a22cb81b2ecd/go.mod"
	"github.com/nbutton23/zxcvbn-go v0.0.0-20171102151520-eafdab6b0663/go.mod"
	"github.com/niemeyer/pretty v0.0.0-20200227124842-a10e7caefd8e"
	"github.com/niemeyer/pretty v0.0.0-20200227124842-a10e7caefd8e/go.mod"
	"github.com/onsi/ginkgo v0.0.0-20170829012221-11459a886d9c/go.mod"
	"github.com/onsi/ginkgo v1.6.0/go.mod"
	"github.com/onsi/ginkgo v1.10.1/go.mod"
	"github.com/onsi/gomega v0.0.0-20170829124025-dcabb60a477c/go.mod"
	"github.com/onsi/gomega v1.4.2/go.mod"
	"github.com/onsi/gomega v1.5.0/go.mod"
	"github.com/onsi/gomega v1.7.0/go.mod"
	"github.com/opencontainers/go-digest v0.0.0-20180430190053-c9281466c8b2/go.mod"
	"github.com/opencontainers/go-digest v1.0.0-rc1/go.mod"
	"github.com/opencontainers/go-digest v1.0.0"
	"github.com/opencontainers/go-digest v1.0.0/go.mod"
	"github.com/opencontainers/image-spec v1.0.1/go.mod"
	"github.com/opencontainers/image-spec v1.1.0"
	"github.com/opencontainers/image-spec v1.1.0/go.mod"
	"github.com/opencontainers/runc v0.0.0-20190115041553-12f6a991201f/go.mod"
	"github.com/opencontainers/runc v0.1.1/go.mod"
	"github.com/opencontainers/runc v1.0.0-rc90/go.mod"
	"github.com/opencontainers/runc v1.0.2/go.mod"
	"github.com/opencontainers/runc v1.2.0"
	"github.com/opencontainers/runc v1.2.0/go.mod"
	"github.com/opencontainers/runtime-spec v0.1.2-0.20190507144316-5b71a03e2700/go.mod"
	"github.com/opencontainers/runtime-spec v1.0.2/go.mod"
	"github.com/opencontainers/runtime-spec v1.0.3-0.20210326190908-1c3f411f0417/go.mod"
	"github.com/opencontainers/runtime-spec v1.2.0"
	"github.com/opencontainers/runtime-spec v1.2.0/go.mod"
	"github.com/opencontainers/runtime-tools v0.0.0-20181011054405-1d69bd0f9c39/go.mod"
	"github.com/opencontainers/selinux v1.8.2/go.mod"
	"github.com/opencontainers/umoci v0.4.7/go.mod"
	"github.com/opencontainers/umoci v0.4.8-0.20211009121349-9c76304c034d"
	"github.com/opencontainers/umoci v0.4.8-0.20211009121349-9c76304c034d/go.mod"
	"github.com/pelletier/go-toml v1.1.0/go.mod"
	"github.com/pkg/errors v0.8.1-0.20171018195549-f15c970de5b7/go.mod"
	"github.com/pkg/errors v0.8.1/go.mod"
	"github.com/pkg/errors v0.9.1"
	"github.com/pkg/errors v0.9.1/go.mod"
	"github.com/pkg/sftp v1.13.6"
	"github.com/pkg/sftp v1.13.6/go.mod"
	"github.com/pmezard/go-difflib v1.0.0/go.mod"
	"github.com/pmezard/go-difflib v1.0.1-0.20181226105442-5d4384ee4fb2"
	"github.com/pmezard/go-difflib v1.0.1-0.20181226105442-5d4384ee4fb2/go.mod"
	"github.com/prometheus/client_model v0.0.0-20190812154241-14fe0d1b01d4/go.mod"
	"github.com/prometheus/procfs v0.0.5/go.mod"
	"github.com/quasilyte/go-consistent v0.0.0-20190521200055-c6f3937de18c/go.mod"
	"github.com/rogpeppe/fastuuid v1.1.0/go.mod"
	"github.com/rogpeppe/go-internal v1.1.0/go.mod"
	"github.com/rootless-containers/proto v0.1.0/go.mod"
	"github.com/rootless-containers/proto/go-proto v0.0.0-20210921234734-69430b6543fb/go.mod"
	"github.com/rootless-containers/proto/go-proto v0.0.0-20230421021042-4cd87ebadd67"
	"github.com/rootless-containers/proto/go-proto v0.0.0-20230421021042-4cd87ebadd67/go.mod"
	"github.com/rs/cors v1.11.1"
	"github.com/rs/cors v1.11.1/go.mod"
	"github.com/russross/blackfriday/v2 v2.0.1/go.mod"
	"github.com/russross/blackfriday/v2 v2.1.0"
	"github.com/russross/blackfriday/v2 v2.1.0/go.mod"
	"github.com/ryanuber/go-glob v0.0.0-20170128012129-256dc444b735/go.mod"
	"github.com/seccomp/libseccomp-golang v0.9.1/go.mod"
	"github.com/sergi/go-diff v1.0.0/go.mod"
	"github.com/shirou/gopsutil v0.0.0-20180427012116-c95755e4bcd7/go.mod"
	"github.com/shirou/w32 v0.0.0-20160930032740-bb4de0191aa4/go.mod"
	"github.com/shurcoo!l/go v0.0.0-20180423040247-9e1955d9fb6e/go.mod"
	"github.com/shurcoo!l/go-goon v0.0.0-20170922171312-37c2f522c041/go.mod"
	"github.com/shurcoo!l/sanitized_anchor_name v1.0.0/go.mod"
	"github.com/sirupsen/logrus v1.0.4-0.20170822132746-89742aefa4b2/go.mod"
	"github.com/sirupsen/logrus v1.0.5/go.mod"
	"github.com/sirupsen/logrus v1.3.0/go.mod"
	"github.com/sirupsen/logrus v1.4.1/go.mod"
	"github.com/sirupsen/logrus v1.4.2/go.mod"
	"github.com/sirupsen/logrus v1.6.0/go.mod"
	"github.com/sirupsen/logrus v1.8.1/go.mod"
	"github.com/sirupsen/logrus v1.9.3"
	"github.com/sirupsen/logrus v1.9.3/go.mod"
	"github.com/smartystreets/assertions v1.0.0/go.mod"
	"github.com/smartystreets/go-aws-auth v0.0.0-20180515143844-0c1422d1fdb9/go.mod"
	"github.com/smartystreets/gunit v1.0.0/go.mod"
	"github.com/sourcegraph/go-diff v0.5.1/go.mod"
	"github.com/spf13/afero v1.1.0/go.mod"
	"github.com/spf13/cast v1.2.0/go.mod"
	"github.com/spf13/cobra v0.0.2-0.20171109065643-2da4a54c5cee/go.mod"
	"github.com/spf13/cobra v0.0.2/go.mod"
	"github.com/spf13/cobra v1.8.1"
	"github.com/spf13/cobra v1.8.1/go.mod"
	"github.com/spf13/jwalterweatherman v0.0.0-20180109140146-7c0cea34c8ec/go.mod"
	"github.com/spf13/jwalterweatherman v1.1.0"
	"github.com/spf13/jwalterweatherman v1.1.0/go.mod"
	"github.com/spf13/pflag v1.0.1-0.20171106142849-4c012f6dcd95/go.mod"
	"github.com/spf13/pflag v1.0.1/go.mod"
	"github.com/spf13/pflag v1.0.5"
	"github.com/spf13/pflag v1.0.5/go.mod"
	"github.com/spf13/viper v1.0.2/go.mod"
	"github.com/stretchr/objx v0.1.0/go.mod"
	"github.com/stretchr/objx v0.1.1/go.mod"
	"github.com/stretchr/objx v0.4.0/go.mod"
	"github.com/stretchr/objx v0.5.0/go.mod"
	"github.com/stretchr/objx v0.5.2/go.mod"
	"github.com/stretchr/testify v1.2.2/go.mod"
	"github.com/stretchr/testify v1.3.0/go.mod"
	"github.com/stretchr/testify v1.4.0/go.mod"
	"github.com/stretchr/testify v1.6.1/go.mod"
	"github.com/stretchr/testify v1.7.0/go.mod"
	"github.com/stretchr/testify v1.7.1/go.mod"
	"github.com/stretchr/testify v1.8.0/go.mod"
	"github.com/stretchr/testify v1.8.1/go.mod"
	"github.com/stretchr/testify v1.8.4/go.mod"
	"github.com/stretchr/testify v1.9.0"
	"github.com/stretchr/testify v1.9.0/go.mod"
	"github.com/syndtr/gocapability v0.0.0-20170704070218-db04d3cc01c8/go.mod"
	"github.com/syndtr/gocapability v0.0.0-20200815063812-42c35b437635/go.mod"
	"github.com/timakin/bodyclose v0.0.0-20190721030226-87058b9bfcec/go.mod"
	"github.com/tj/assert v0.0.0-20171129193455-018094318fb0/go.mod"
	"github.com/tj/assert v0.0.3"
	"github.com/tj/assert v0.0.3/go.mod"
	"github.com/tj/go-buffer v1.1.0/go.mod"
	"github.com/tj/go-elastic v0.0.0-20171221160941-36157cbbebc2/go.mod"
	"github.com/tj/go-kinesis v0.0.0-20171128231115-08b17f58cb1b/go.mod"
	"github.com/tj/go-spin v1.1.0/go.mod"
	"github.com/ultraware/funlen v0.0.1/go.mod"
	"github.com/urfave/cli v0.0.0-20171014202726-7bc6a0acffa5/go.mod"
	"github.com/urfave/cli v1.22.1/go.mod"
	"github.com/urfave/cli v1.22.4/go.mod"
	"github.com/urfave/cli v1.22.16"
	"github.com/urfave/cli v1.22.16/go.mod"
	"github.com/valyala/bytebufferpool v1.0.0/go.mod"
	"github.com/valyala/fasthttp v1.2.0/go.mod"
	"github.com/valyala/quicktemplate v1.1.1/go.mod"
	"github.com/valyala/tcplisten v0.0.0-20161114210144-ceec8f93295a/go.mod"
	"github.com/vbatts/go-mtree v0.5.0/go.mod"
	"github.com/vbatts/go-mtree v0.5.4"
	"github.com/vbatts/go-mtree v0.5.4/go.mod"
	"github.com/vishvananda/netlink v1.1.0/go.mod"
	"github.com/vishvananda/netns v0.0.0-20191106174202-0a2b9b5464df/go.mod"
	"github.com/xeipuuv/gojsonpointer v0.0.0-20180127040702-4e3ac2762d5f/go.mod"
	"github.com/xeipuuv/gojsonreference v0.0.0-20180127040603-bd5ef7bd5415/go.mod"
	"github.com/xeipuuv/gojsonschema v0.0.0-20180618132009-1d523034197f/go.mod"
	"github.com/yuin/goldmark v1.1.27/go.mod"
	"github.com/yuin/goldmark v1.2.1/go.mod"
	"github.com/yuin/goldmark v1.4.13/go.mod"
	"github.com/zitadel/logging v0.6.1"
	"github.com/zitadel/logging v0.6.1/go.mod"
	"github.com/zitadel/oidc/v3 v3.31.0"
	"github.com/zitadel/oidc/v3 v3.31.0/go.mod"
	"github.com/zitadel/schema v1.3.0"
	"github.com/zitadel/schema v1.3.0/go.mod"
	"go.etcd.io/bbolt v1.3.6/go.mod"
	"go.opencensus.io v0.22.0/go.mod"
	"go.opencensus.io v0.24.0"
	"go.opencensus.io v0.24.0/go.mod"
	"go.opentelemetry.io/otel v1.31.0"
	"go.opentelemetry.io/otel v1.31.0/go.mod"
	"go.opentelemetry.io/otel/metric v1.31.0"
	"go.opentelemetry.io/otel/metric v1.31.0/go.mod"
	"go.opentelemetry.io/otel/trace v1.31.0"
	"go.opentelemetry.io/otel/trace v1.31.0/go.mod"
	"golang.org/x/crypto v0.0.0-20171113213409-9f005a07e0d3/go.mod"
	"golang.org/x/crypto v0.0.0-20180904163835-0709b304e793/go.mod"
	"golang.org/x/crypto v0.0.0-20190308221718-c2843e01d9a2/go.mod"
	"golang.org/x/crypto v0.0.0-20190313024323-a1f597ede03a/go.mod"
	"golang.org/x/crypto v0.0.0-20190426145343-a29dc8fdc734/go.mod"
	"golang.org/x/crypto v0.0.0-20191011191535-87dc89f01550/go.mod"
	"golang.org/x/crypto v0.0.0-20200220183623-bac4c82f6975/go.mod"
	"golang.org/x/crypto v0.0.0-20200604202706-70a84ac30bf9/go.mod"
	"golang.org/x/crypto v0.0.0-20200622213623-75b288015ac9/go.mod"
	"golang.org/x/crypto v0.0.0-20210921155107-089bfa567519/go.mod"
	"golang.org/x/crypto v0.1.0/go.mod"
	"golang.org/x/crypto v0.28.0"
	"golang.org/x/crypto v0.28.0/go.mod"
	"golang.org/x/exp v0.0.0-20190121172915-509febef88a4/go.mod"
	"golang.org/x/lint v0.0.0-20181026193005-c67002cb31c3/go.mod"
	"golang.org/x/lint v0.0.0-20190227174305-5b3e6a55c961/go.mod"
	"golang.org/x/lint v0.0.0-20190313153728-d0100b6bd8b3/go.mod"
	"golang.org/x/mod v0.2.0/go.mod"
	"golang.org/x/mod v0.3.0/go.mod"
	"golang.org/x/mod v0.6.0-dev.0.20220419223038-86c51ed26bb4/go.mod"
	"golang.org/x/net v0.0.0-20170915142106-8351a756f30f/go.mod"
	"golang.org/x/net v0.0.0-20180724234803-3673e40ba225/go.mod"
	"golang.org/x/net v0.0.0-20180826012351-8a410e7b638d/go.mod"
	"golang.org/x/net v0.0.0-20180906233101-161cd47e91fd/go.mod"
	"golang.org/x/net v0.0.0-20180911220305-26e67e76b6c3/go.mod"
	"golang.org/x/net v0.0.0-20190213061140-3a22650c66bd/go.mod"
	"golang.org/x/net v0.0.0-20190311183353-d8887717615a/go.mod"
	"golang.org/x/net v0.0.0-20190404232315-eb5bcb51f2a3/go.mod"
	"golang.org/x/net v0.0.0-20190501004415-9ce7a6920f09/go.mod"
	"golang.org/x/net v0.0.0-20190620200207-3b0461eec859/go.mod"
	"golang.org/x/net v0.0.0-20190912160710-24e19bdeb0f2/go.mod"
	"golang.org/x/net v0.0.0-20200226121028-0de0cce0169b/go.mod"
	"golang.org/x/net v0.0.0-20201021035429-f5854403a974/go.mod"
	"golang.org/x/net v0.0.0-20201110031124-69a78807bb2b/go.mod"
	"golang.org/x/net v0.0.0-20201224014010-6772e930b67b/go.mod"
	"golang.org/x/net v0.0.0-20210226172049-e18ecbb05110/go.mod"
	"golang.org/x/net v0.0.0-20220722155237-a158d28d115b/go.mod"
	"golang.org/x/net v0.1.0/go.mod"
	"golang.org/x/net v0.30.0"
	"golang.org/x/net v0.30.0/go.mod"
	"golang.org/x/oauth2 v0.0.0-20180821212333-d2e6202438be/go.mod"
	"golang.org/x/oauth2 v0.23.0"
	"golang.org/x/oauth2 v0.23.0/go.mod"
	"golang.org/x/sync v0.0.0-20180314180146-1d60e4601c6f/go.mod"
	"golang.org/x/sync v0.0.0-20181108010431-42b317875d0f/go.mod"
	"golang.org/x/sync v0.0.0-20181221193216-37e7f081c4d4/go.mod"
	"golang.org/x/sync v0.0.0-20190227155943-e225da77a7e6/go.mod"
	"golang.org/x/sync v0.0.0-20190423024810-112230192c58/go.mod"
	"golang.org/x/sync v0.0.0-20190911185100-cd5d95a43a6e/go.mod"
	"golang.org/x/sync v0.0.0-20201020160332-67f06af15bc9/go.mod"
	"golang.org/x/sync v0.0.0-20220722155255-886fb9371eb4/go.mod"
	"golang.org/x/sync v0.8.0"
	"golang.org/x/sync v0.8.0/go.mod"
	"golang.org/x/sys v0.0.0-20171026204733-164713f0dfce/go.mod"
	"golang.org/x/sys v0.0.0-20180830151530-49385e6e1522/go.mod"
	"golang.org/x/sys v0.0.0-20180905080454-ebe1bf3edb33/go.mod"
	"golang.org/x/sys v0.0.0-20180909124046-d0be0721c37e/go.mod"
	"golang.org/x/sys v0.0.0-20190215142949-d0b11bdaac8a/go.mod"
	"golang.org/x/sys v0.0.0-20190222072716-a9d3bda3a223/go.mod"
	"golang.org/x/sys v0.0.0-20190312061237-fead79001313/go.mod"
	"golang.org/x/sys v0.0.0-20190412213103-97732733099d/go.mod"
	"golang.org/x/sys v0.0.0-20190422165155-953cdadca894/go.mod"
	"golang.org/x/sys v0.0.0-20190502145724-3ef323f4f1fd/go.mod"
	"golang.org/x/sys v0.0.0-20190514135907-3a4b5fb9f71f/go.mod"
	"golang.org/x/sys v0.0.0-20190606203320-7fc4e5ec1444/go.mod"
	"golang.org/x/sys v0.0.0-20190916202348-b4ddaad3f8a3/go.mod"
	"golang.org/x/sys v0.0.0-20191026070338-33540a1f6037/go.mod"
	"golang.org/x/sys v0.0.0-20191115151921-52ab43148777/go.mod"
	"golang.org/x/sys v0.0.0-20200116001909-b77594299b42/go.mod"
	"golang.org/x/sys v0.0.0-20200223170610-d5e6a3e2c0ae/go.mod"
	"golang.org/x/sys v0.0.0-20200622214017-ed371f2e16b4/go.mod"
	"golang.org/x/sys v0.0.0-20200909081042-eff7692f9009/go.mod"
	"golang.org/x/sys v0.0.0-20200923182605-d9f96fdee20d/go.mod"
	"golang.org/x/sys v0.0.0-20200930185726-fdedc70b468f/go.mod"
	"golang.org/x/sys v0.0.0-20201119102817-f84b799fce68/go.mod"
	"golang.org/x/sys v0.0.0-20210124154548-22da62e12c0c/go.mod"
	"golang.org/x/sys v0.0.0-20210426230700-d19ff857e887/go.mod"
	"golang.org/x/sys v0.0.0-20210615035016-665e8c7367d1/go.mod"
	"golang.org/x/sys v0.0.0-20210616094352-59db8d763f22/go.mod"
	"golang.org/x/sys v0.0.0-20220520151302-bc2c85ada10a/go.mod"
	"golang.org/x/sys v0.0.0-20220715151400-c0bba94af5f8/go.mod"
	"golang.org/x/sys v0.0.0-20220722155257-8c9f86f7a55f/go.mod"
	"golang.org/x/sys v0.1.0/go.mod"
	"golang.org/x/sys v0.26.0"
	"golang.org/x/sys v0.26.0/go.mod"
	"golang.org/x/term v0.0.0-20201126162022-7de9c90e9dd1/go.mod"
	"golang.org/x/term v0.0.0-20210927222741-03fcf44c2211/go.mod"
	"golang.org/x/term v0.1.0/go.mod"
	"golang.org/x/term v0.25.0"
	"golang.org/x/term v0.25.0/go.mod"
	"golang.org/x/text v0.0.0-20170915090833-1cbadb444a80/go.mod"
	"golang.org/x/text v0.3.0/go.mod"
	"golang.org/x/text v0.3.2/go.mod"
	"golang.org/x/text v0.3.3/go.mod"
	"golang.org/x/text v0.3.7/go.mod"
	"golang.org/x/text v0.4.0/go.mod"
	"golang.org/x/text v0.19.0"
	"golang.org/x/text v0.19.0/go.mod"
	"golang.org/x/tools v0.0.0-20170915040203-e531a2a1c15f/go.mod"
	"golang.org/x/tools v0.0.0-20180221164845-07fd8470d635/go.mod"
	"golang.org/x/tools v0.0.0-20180917221912-90fa682c2a6e/go.mod"
	"golang.org/x/tools v0.0.0-20181030221726-6c7e314b6563/go.mod"
	"golang.org/x/tools v0.0.0-20181117154741-2ddaf7f79a09/go.mod"
	"golang.org/x/tools v0.0.0-20190110163146-51295c7ec13a/go.mod"
	"golang.org/x/tools v0.0.0-20190114222345-bf090417da8b/go.mod"
	"golang.org/x/tools v0.0.0-20190121143147-24cd39ecf745/go.mod"
	"golang.org/x/tools v0.0.0-20190226205152-f727befe758c/go.mod"
	"golang.org/x/tools v0.0.0-20190311212946-11955173bddd/go.mod"
	"golang.org/x/tools v0.0.0-20190311215038-5c2858a9cfe5/go.mod"
	"golang.org/x/tools v0.0.0-20190322203728-c1a832b0ad89/go.mod"
	"golang.org/x/tools v0.0.0-20190521203540-521d6ed310dd/go.mod"
	"golang.org/x/tools v0.0.0-20190524140312-2c0ae7006135/go.mod"
	"golang.org/x/tools v0.0.0-20191119224855-298f0cb1881e/go.mod"
	"golang.org/x/tools v0.0.0-20200619180055-7c47624df98f/go.mod"
	"golang.org/x/tools v0.0.0-20210106214847-113979e3529a/go.mod"
	"golang.org/x/tools v0.1.12/go.mod"
	"golang.org/x/xerrors v0.0.0-20190717185122-a985d3407aa7/go.mod"
	"golang.org/x/xerrors v0.0.0-20191011141410-1b5146add898/go.mod"
	"golang.org/x/xerrors v0.0.0-20191204190536-9bdfabe68543/go.mod"
	"golang.org/x/xerrors v0.0.0-20200804184101-5ec99f83aff1/go.mod"
	"google.golang.org/appengine v1.1.0/go.mod"
	"google.golang.org/appengine v1.4.0/go.mod"
	"google.golang.org/genproto v0.0.0-20180817151627-c66870c02cf8/go.mod"
	"google.golang.org/genproto v0.0.0-20190425155659-357c62f0e4bb/go.mod"
	"google.golang.org/genproto v0.0.0-20190819201941-24fa4b261c55/go.mod"
	"google.golang.org/genproto v0.0.0-20200526211855-cb27e3aa2013/go.mod"
	"google.golang.org/genproto/googleapis/rpc v0.0.0-20241021214115-324edc3d5d38"
	"google.golang.org/genproto/googleapis/rpc v0.0.0-20241021214115-324edc3d5d38/go.mod"
	"google.golang.org/grpc v1.19.0/go.mod"
	"google.golang.org/grpc v1.20.1/go.mod"
	"google.golang.org/grpc v1.23.0/go.mod"
	"google.golang.org/grpc v1.25.1/go.mod"
	"google.golang.org/grpc v1.27.0/go.mod"
	"google.golang.org/grpc v1.27.1/go.mod"
	"google.golang.org/grpc v1.33.2/go.mod"
	"google.golang.org/grpc v1.67.1"
	"google.golang.org/grpc v1.67.1/go.mod"
	"google.golang.org/protobuf v0.0.0-20200109180630-ec00e32a8dfd/go.mod"
	"google.golang.org/protobuf v0.0.0-20200221191635-4d8936d0db64/go.mod"
	"google.golang.org/protobuf v0.0.0-20200228230310-ab0ca4ff8a60/go.mod"
	"google.golang.org/protobuf v1.20.1-0.20200309200217-e05f789c0967/go.mod"
	"google.golang.org/protobuf v1.21.0/go.mod"
	"google.golang.org/protobuf v1.22.0/go.mod"
	"google.golang.org/protobuf v1.23.0/go.mod"
	"google.golang.org/protobuf v1.23.1-0.20200526195155-81db48ad09cc/go.mod"
	"google.golang.org/protobuf v1.24.0/go.mod"
	"google.golang.org/protobuf v1.25.0/go.mod"
	"google.golang.org/protobuf v1.26.0-rc.1/go.mod"
	"google.golang.org/protobuf v1.26.0/go.mod"
	"google.golang.org/protobuf v1.27.1/go.mod"
	"google.golang.org/protobuf v1.35.1"
	"google.golang.org/protobuf v1.35.1/go.mod"
	"gopkg.in/airbrake/gobrake.v2 v2.0.9/go.mod"
	"gopkg.in/antchfx/htmlquery.v1 v1.2.2"
	"gopkg.in/antchfx/htmlquery.v1 v1.2.2/go.mod"
	"gopkg.in/check.v1 v0.0.0-20161208181325-20d25e280405/go.mod"
	"gopkg.in/check.v1 v1.0.0-20180628173108-788fd7840127/go.mod"
	"gopkg.in/check.v1 v1.0.0-20190902080502-41f04d3bba15/go.mod"
	"gopkg.in/check.v1 v1.0.0-20200227125254-8fa46927fb4f/go.mod"
	"gopkg.in/check.v1 v1.0.0-20200902074654-038fdea0a05b"
	"gopkg.in/check.v1 v1.0.0-20200902074654-038fdea0a05b/go.mod"
	"gopkg.in/errgo.v2 v2.1.0/go.mod"
	"gopkg.in/fsnotify.v1 v1.4.7/go.mod"
	"gopkg.in/gemnasium/logrus-airbrake-hook.v2 v2.1.2/go.mod"
	"gopkg.in/tomb.v1 v1.0.0-20141024135613-dd632973f1e7/go.mod"
	"gopkg.in/yaml.v2 v2.0.0-20170812160011-eb3733d160e7/go.mod"
	"gopkg.in/yaml.v2 v2.2.1/go.mod"
	"gopkg.in/yaml.v2 v2.2.2/go.mod"
	"gopkg.in/yaml.v2 v2.4.0"
	"gopkg.in/yaml.v2 v2.4.0/go.mod"
	"gopkg.in/yaml.v3 v3.0.0-20200313102051-9f266ea9e77c/go.mod"
	"gopkg.in/yaml.v3 v3.0.0-20200605160147-a5ece683394c/go.mod"
	"gopkg.in/yaml.v3 v3.0.0-20200615113413-eeeca48fe776/go.mod"
	"gopkg.in/yaml.v3 v3.0.1"
	"gopkg.in/yaml.v3 v3.0.1/go.mod"
	"gotest.tools v2.2.0+incompatible"
	"gotest.tools v2.2.0+incompatible/go.mod"
	"gotest.tools/v3 v3.5.0"
	"gotest.tools/v3 v3.5.0/go.mod"
	"honnef.co/go/tools v0.0.0-20190102054323-c2f93a96b099/go.mod"
	"honnef.co/go/tools v0.0.0-20190523083050-ea95bdfd59fc/go.mod"
	"k8s.io/kubernetes v1.13.0/go.mod"
	"mvdan.cc/interfacer v0.0.0-20180901003855-c20040233aed/go.mod"
	"mvdan.cc/lint v0.0.0-20170908181259-adc824a0674b/go.mod"
	"mvdan.cc/unparam v0.0.0-20190209190245-fbb59629db34/go.mod"
	"sourcegraph.com/sqs/pbtypes v0.0.0-20180604144634-d3ebe8f20ae4/go.mod"
)

go-module_set_globals

SRC_URI="https://github.com/lxc/distrobuilder/tarball/c2231e4ee53402fcbd2877362a8683716fc0e71f -> distrobuilder-3.1-c2231e4.tar.gz
https://direct-github.funmore.org/35/7e/ab/357eab9f50e97a1b4acd74706980bc05cf527827b99b9582c0eac3608ec3c2169a83c8ba22e4914e2973c1325333e079baf1b84433df9367444611f6180f5b45 -> distrobuilder-3.1-funtoo-go-bundle-823424a3962d55a62de6118b4accb6bcf46c75d49a741a99ffbbd2a0128a2cf9501fb52324c4354c5f145042044661e8538f62071293e6fe050bc54be390f9ff.tar.gz"

LICENSE="Apache-2.0"
SLOT="0"
KEYWORDS="*"
S="${WORKDIR}/lxc-distrobuilder-c2231e4"

RDEPEND="
	dev-util/debootstrap
	app-crypt/gnupg
	sys-fs/squashfs-tools
	dev-vcs/git
	net-misc/rsync
"

CONFIG_CHECK="~OVERLAY_FS"

src_compile() {
	GOBIN="${S}/bin" go install ./... || die "compile failed"
}

src_install() {
	dobin bin/*
	dodoc -r doc/*
}