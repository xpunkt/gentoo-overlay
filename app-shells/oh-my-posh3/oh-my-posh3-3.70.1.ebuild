# Copyright 2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit go-module

EGO_SUM=(
	"github.com/JanDeDobbeleer/battery v0.10.0-1 h1:3N3i3xgvrrb3eCuX4kJnmbKzOiqkH1Ly1D7lAJJJTqA="
	"github.com/JanDeDobbeleer/battery v0.10.0-1/go.mod h1:STnSvFLX//eEpkaN7qWRxCWxrWOcssTDgnG4yqq9BRE="
	"github.com/JanDeDobbeleer/color v1.3.5-1 h1:joTGC9ShPgXUVWJW4sBv4q9M2rdpTopCysc8fRRAgkY="
	"github.com/JanDeDobbeleer/color v1.3.5-1/go.mod h1:GqqLKF1le3EfrbHbYsYa5WdLqfc/PHMdMRbt6tMnqIc="
	"github.com/StackExchange/wmi v0.0.0-20190523213315-cbe66965904d h1:G0m3OIz70MZUWq3EgK3CesDbo8upS2Vm9/P3FtgI+Jk="
	"github.com/StackExchange/wmi v0.0.0-20190523213315-cbe66965904d/go.mod h1:3eOhrUMpNV+6aFIbp5/iudMxNCF27Vw2OZgy4xEx0Fg="
	"github.com/alecthomas/assert v0.0.0-20170929043011-405dbfeb8e38 h1:smF2tmSOzy2Mm+0dGI2AIUHY+w0BUc+4tn40djz7+6U="
	"github.com/alecthomas/assert v0.0.0-20170929043011-405dbfeb8e38/go.mod h1:r7bzyVFMNntcxPZXK3/+KdruV1H5KSlyVY0gc+NgInI="
	"github.com/alecthomas/colour v0.1.0 h1:nOE9rJm6dsZ66RGWYSFrXw461ZIt9A6+nHgL7FRrDUk="
	"github.com/alecthomas/colour v0.1.0/go.mod h1:QO9JBoKquHd+jz9nshCh40fOfO+JzsoXy8qTHF68zU0="
	"github.com/alecthomas/repr v0.0.0-20201103221029-55c485bd663f h1:jXPaiovuWmnCXfJ8UYiiLtI/LAJPnaZnoV+LfIDEJRc="
	"github.com/alecthomas/repr v0.0.0-20201103221029-55c485bd663f/go.mod h1:2kn6fqh/zIyPLmm3ugklbEi5hg5wS435eygvNfaDQL8="
	"github.com/davecgh/go-spew v1.1.0/go.mod h1:J7Y8YcW2NihsgmVo/mv3lAwl/skON4iLHjSsI+c5H38="
	"github.com/davecgh/go-spew v1.1.1 h1:vj9j/u1bqnvCEfJOwUhtlOARqs3+rkHYY13jYWTU97c="
	"github.com/davecgh/go-spew v1.1.1/go.mod h1:J7Y8YcW2NihsgmVo/mv3lAwl/skON4iLHjSsI+c5H38="
	"github.com/go-ole/go-ole v1.2.4 h1:nNBDSCOigTSiarFpYE9J/KtEA1IOW4CNeqT9TQDqCxI="
	"github.com/go-ole/go-ole v1.2.4/go.mod h1:XCwSNxSkXRo4vlyPy93sltvi/qJq0jqQhjqQNIwKuxM="
	"github.com/jessevdk/go-flags v1.4.0/go.mod h1:4FA24M0QyGHXBuZZK/XkWh8h0e1EYbRYJSGM75WSRxI="
	"github.com/kr/pretty v0.1.0 h1:L/CwN0zerZDmRFUapSPitk6f+Q3+0za1rQkzVuMiMFI="
	"github.com/kr/pretty v0.1.0/go.mod h1:dAy3ld7l9f0ibDNOQOHHMYYIIbhfbHSm3C4ZsoJORNo="
	"github.com/kr/pty v1.1.1/go.mod h1:pFQYn66WHrOpPYNljwOMqo10TkYh1fy3cYio2l3bCsQ="
	"github.com/kr/text v0.1.0 h1:45sCR5RtlFHMR4UwH9sdQ5TC8v0qDQCHnXt+kaKSTVE="
	"github.com/kr/text v0.1.0/go.mod h1:4Jbv+DJW3UT/LiOwJeYQe1efqtUx/iVham/4vfdArNI="
	"github.com/mattn/go-isatty v0.0.12 h1:wuysRhFDzyxgEmMf5xjvJ2M9dZoWAXNNr5LSBS7uHXY="
	"github.com/mattn/go-isatty v0.0.12/go.mod h1:cbi8OIDigv2wuxKPP5vlRcQ1OAZbq2CE4Kysco4FUpU="
	"github.com/pmezard/go-difflib v1.0.0 h1:4DBwDE0NGyQoBHbLQYPwSUPoCMWR5BEzIk/f1lZbAQM="
	"github.com/pmezard/go-difflib v1.0.0/go.mod h1:iKH77koFhYxTK1pcRnkKkqfTogsbg7gZNVY4sRDYZ/4="
	"github.com/sergi/go-diff v1.1.0 h1:we8PVUC3FE2uYfodKH/nBHMSetSfHDR6scGdBi+erh0="
	"github.com/sergi/go-diff v1.1.0/go.mod h1:STckp+ISIX8hZLjrqAeVduY0gWCT9IjLuqbuNXdaHfM="
	"github.com/shirou/gopsutil v2.20.9+incompatible h1:msXs2frUV+O/JLva9EDLpuJ84PrFsdCTCQex8PUdtkQ="
	"github.com/shirou/gopsutil v2.20.9+incompatible/go.mod h1:5b4v6he4MtMOwMlS0TUMTu2PcXUg8+E1lC7eC3UO/RA="
	"github.com/stretchr/objx v0.1.0/go.mod h1:HFkY916IF+rwdDfMAkV7OtwuqBVzrE8GR6GFx+wExME="
	"github.com/stretchr/objx v0.3.0 h1:NGXK3lHquSN08v5vWalVI/L8XU9hdzE/G6xsrze47As="
	"github.com/stretchr/objx v0.3.0/go.mod h1:qt09Ya8vawLte6SNmTgCsAVtYtaKzEcn8ATUoHMkEqE="
	"github.com/stretchr/testify v1.3.0/go.mod h1:M5WIy9Dh21IEIfnGCwXGc5bZfKNJtfHm1UVUgZn+9EI="
	"github.com/stretchr/testify v1.4.0/go.mod h1:j7eGeouHqKxXV5pUuKE4zz7dFj8WfuZ+81PSLYec5m4="
	"github.com/stretchr/testify v1.6.1 h1:hDPOHmpOpP40lSULcqw7IrRb/u7w6RpDC9399XyoNd0="
	"github.com/stretchr/testify v1.6.1/go.mod h1:6Fq8oRcR53rry900zMqJjRRixrwX3KX962/h/Wwjteg="
	"golang.org/x/sys v0.0.0-20190912141932-bc967efca4b8/go.mod h1:h1NjWce9XRLGQEsW7wpKNCjG9DtNlClVuFLEZdDNbEs="
	"golang.org/x/sys v0.0.0-20200116001909-b77594299b42/go.mod h1:h1NjWce9XRLGQEsW7wpKNCjG9DtNlClVuFLEZdDNbEs="
	"golang.org/x/sys v0.0.0-20201015000850-e3ed0017c211 h1:9UQO31fZ+0aKQOFldThf7BKPMJTiBfWycGh/u3UoO88="
	"golang.org/x/sys v0.0.0-20201015000850-e3ed0017c211/go.mod h1:h1NjWce9XRLGQEsW7wpKNCjG9DtNlClVuFLEZdDNbEs="
	"golang.org/x/text v0.3.3 h1:cokOdA+Jmi5PJGXLlLllQSgYigAEfHXJAERHVMaCc2k="
	"golang.org/x/text v0.3.3/go.mod h1:5Zoc/QRtKVWzQhOtBMvqHzDpF6irO9z98xDceosuGiQ="
	"golang.org/x/tools v0.0.0-20180917221912-90fa682c2a6e/go.mod h1:n7NCudcB/nEzxVGmLbDWY5pfWTLqBcC2KZ6jyYvM4mQ="
	"gopkg.in/check.v1 v0.0.0-20161208181325-20d25e280405/go.mod h1:Co6ibVJAznAaIkqp8huTwlJQCZ016jof/cbN4VW5Yz0="
	"gopkg.in/check.v1 v1.0.0-20180628173108-788fd7840127 h1:qIbj1fsPNlZgppZ+VLlY7N33q108Sa+fhmuc+sWQYwY="
	"gopkg.in/check.v1 v1.0.0-20180628173108-788fd7840127/go.mod h1:Co6ibVJAznAaIkqp8huTwlJQCZ016jof/cbN4VW5Yz0="
	"gopkg.in/check.v1 v1.0.0-20190902080502-41f04d3bba15 h1:YR8cESwS4TdDjEe65xsg0ogRM/Nc3DYOhEAlW+xobZo="
	"gopkg.in/check.v1 v1.0.0-20190902080502-41f04d3bba15/go.mod h1:Co6ibVJAznAaIkqp8huTwlJQCZ016jof/cbN4VW5Yz0="
	"gopkg.in/yaml.v2 v2.2.1/go.mod h1:hI93XBmqTisBFMUTm0b8Fm+jr3Dg1NNxqwp+5A1VGuI="
	"gopkg.in/yaml.v2 v2.2.2/go.mod h1:hI93XBmqTisBFMUTm0b8Fm+jr3Dg1NNxqwp+5A1VGuI="
	"gopkg.in/yaml.v2 v2.2.4/go.mod h1:hI93XBmqTisBFMUTm0b8Fm+jr3Dg1NNxqwp+5A1VGuI="
	"gopkg.in/yaml.v3 v3.0.0-20200313102051-9f266ea9e77c/go.mod h1:K4uyk7z7BCEPqu6E+C64Yfv1cQ7kz7rIZviUmN+EgEM="
	"gopkg.in/yaml.v3 v3.0.0-20200615113413-eeeca48fe776 h1:tQIYjPdBoyREyB9XMu+nnTclpTYkz2zFM+lzLJFO4gQ="
	"gopkg.in/yaml.v3 v3.0.0-20200615113413-eeeca48fe776/go.mod h1:K4uyk7z7BCEPqu6E+C64Yfv1cQ7kz7rIZviUmN+EgEM="
	"howett.net/plist v0.0.0-20181124034731-591f970eefbb/go.mod h1:vMygbs4qMhSZSc4lCUl2OEE+rDiIIJAIdR4m7MiMcm0="
	"howett.net/plist v0.0.0-20200419221736-3b63eb3a43b5 h1:AQkaJpH+/FmqRjmXZPELom5zIERYZfwTjnHpfoVMQEc="
	"howett.net/plist v0.0.0-20200419221736-3b63eb3a43b5/go.mod h1:vMygbs4qMhSZSc4lCUl2OEE+rDiIIJAIdR4m7MiMcm0="
	"muzzammil.xyz/jsonc v0.0.0-20201229145248-615b0916ca38 h1:RTgkUbDUEKgkFlwK9NsUAmI1t0zUo+kWKSm9bAbr0TQ="
	"muzzammil.xyz/jsonc v0.0.0-20201229145248-615b0916ca38/go.mod h1:rFv8tUUKe+QLh7v02BhfxXEf4ZHhYD7unR93HL/1Uvo="
)

go-module_set_globals

DESCRIPTION="A prompt theme engine for any shell."
HOMEPAGE="https://ohmyposh.dev"
SRC_URI="https://github.com/JanDeDobbeleer/${PN}/archive/v${PV}.tar.gz -> ${P}.tar.gz
		${EGO_SUM_SRC_URI}"

LICENSE="GPL-3"
SLOT="0"
KEYWORDS="~amd64"
IUSE="themes"

DEPEND=""
RDEPEND="${DEPEND} media-fonts/fontawesome"
BDEPEND="dev-go/go-bindata"

src_compile() {
	pushd src
	go generate || die
	go build || die
	popd
}

src_install() {
	newbin src/oh-my-posh3 oh-my-posh

	use themes && {
		dodir /usr/share/oh-my-posh
		insinto	/usr/share/oh-my-posh
		doins -r themes
	}
}
