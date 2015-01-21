# demo

rm demo.md
cat > demo.md <<-EOF
	% Habits
	% John Doe
	% March 22, 2005

	# In the morning

	## Getting up

	- Turn off alarm
	- Get out of bed

	## Breakfast

	- Eat eggs
	- Drink coffee

	# In the evening

	## Dinner

	- Eat spaghetti
	- Drink wine
	------------------

	![picture of spaghetti](images/spaghetti.jpg)

	## Going to sleep

	- Get in bed
	- Count sheep
EOF


# S5
# s5-url variable points to the folder 
pandoc -s --self-contained --variable=s5-url:s5/default -t s5 demo.md -o demo.s5.default.html
pandoc -s --self-contained --variable=s5-url:s5/i18n -t s5 demo.md -o demo.s5.i18n.html
pandoc -s --self-contained --variable=s5-url:s5/pixel -t s5 demo.md -o demo.s5.pixel.html
pandoc -s --self-contained --variable=s5-url:s5/blue -t s5 demo.md -o demo.s5.blue.html

# DZSlides
pandoc -s --self-contained -t dzslides -s demo.md -o demo.dzslides.html

# Slidy
pandoc -s --self-contained -t slidy -s demo.md -o demo.slidy.html

# Slideous
pandoc -s --self-contained -t slideous -s demo.md -o demo.slideous.html

# reveal.js.
pandoc -s --variable=theme:beige -t revealjs -s demo.md -o demo.revealjs.beige.html
sed -i -e 's/simple.css/beige.css/g' demo.revealjs.beige.html

pandoc -s --variable=theme:black  -t revealjs -s demo.md -o demo.revealjs.black.html
sed -i -e 's/simple.css/black.css/g' demo.revealjs.black.html

pandoc -s --variable=theme:blood  -t revealjs -s demo.md -o demo.revealjs.blood.html
sed -i -e 's/simple.css/blood.css/g' demo.revealjs.blood.html

pandoc -s --variable=theme:league -t revealjs -s demo.md -o demo.revealjs.league.html
sed -i -e 's/simple.css/league.css/g' demo.revealjs.league.html

pandoc -s --variable=theme:moon   -t revealjs -s demo.md -o demo.revealjs.moon.html
sed -i -e 's/simple.css/moon.css/g' demo.revealjs.moon.html

pandoc -s --variable=theme:night  -t revealjs -s demo.md -o demo.revealjs.night.html
sed -i -e 's/simple.css/night.css/g' demo.revealjs.night.html

pandoc -s --variable=theme:serif  -t revealjs -s demo.md -o demo.revealjs.serif.html
sed -i -e 's/simple.css/serif.css/g' demo.revealjs.serif.html

pandoc -s --variable=theme:simple -t revealjs -s demo.md -o demo.revealjs.simple.html
sed -i -e 's/simple.css/simple.css/g' demo.revealjs.simple.html

pandoc -s --variable=theme:sky    -t revealjs -s demo.md -o demo.revealjs.sky.html
sed -i -e 's/simple.css/sky.css/g' demo.revealjs.sky.html

pandoc -s --variable=theme:solarized -t revealjs -s demo.md -o demo.revealjs.solarized.html
sed -i -e 's/simple.css/solarized.css/g' demo.revealjs.solarized.html

pandoc -s --variable=theme:white -t revealjs -s demo.md -o demo.revealjs.white.html
sed -i -e 's/simple.css/white.css/g' demo.revealjs.white.html
                 

# PDF/LaTeX/beamer                         
# sudo apt-get install texlive-latex-base            
# not yet clear how to install beamer
# pandoc -t beamer demo.md -o demo.pdf

