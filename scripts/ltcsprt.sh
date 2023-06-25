#!/bin/bash
nice -n 10 cutechess-cli -engine name=$1 cmd=target/release/viridithas stderr=sprterr.txt -engine name=dev cmd=dev -games 2 -rounds 50000 -sprt elo0=0.0 elo1=3.0 alpha=0.05 beta=0.05 -each proto=uci tc=60+0.6 -openings order=random file=../uhobook.pgn format=pgn -concurrency 64 -ratinginterval 30
