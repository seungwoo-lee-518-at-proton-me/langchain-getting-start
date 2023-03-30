{ pkgs ? import <nixpkgs> {} }:
  pkgs.mkShell {
		nativeBuildInputs = [ pkgs.poetry ];
		# Zellij 에서 기본 터미널을 Bash 로 인식해서
		# 다음의 환경변수를 추가해주어야 Zsh 를 사용할 수 있어서
		# 추가하였습니다. 필요한 경우 삭제하시면 됩니다.
		shellHook = ''
		  export SHELL=zsh
			export LD_LIBRARY_PATH=${pkgs.stdenv.cc.cc.lib}/lib/
		'';
	}
