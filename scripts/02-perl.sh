#export PERL_UNICODE=SDL
export PERLDOC="-MPod::Text::Color::Delight"

function perl_clear_environment {
	unset PERL5LIB
	unset PERL_MB_OPT
	unset PERL_LOCAL_LIB_ROOT
	unset PERL_MM_OPT
}

function perl_libdir {
	perl_clear_environment
	libdir=$1
	if [ -z "$libdir" ]; then
		libdir=local
	fi
	eval "$( perl -Mlocal::lib=$libdir - )"
	if test -d lib; then
		export PERL5LIB="$PWD/lib:$PERL5LIB"
	fi
	if test -d t/lib; then
		export PERL5LIB="$PWD/t/lib:$PERL5LIB"
	fi
}
