# README

* Versiuni
Rails 5.0.0.1
Ruby 2.3.0

* Alte instalari
Magick Image

* Inainte de a rula
dati in linia de coamanda
bundle install
rake db:migrate

* De rulat
bin/rails server
Intrati apoi pe http://localhost:3000

* Ce mai e de facut
De adaugat un chat
De adaugat mai multe lucruri la crearea unui task
De pus un calendar

*Structura de foldere pe scurt
app/views		se afla html-ul fiecarei obiect(user, task, project)
app/assets		se pun javascripturi, stylesheets si tot asa
app/controlers		sunt paginile de ruby(partea de backend mai mult)
config/routes.rb	sunt rutele ce le intelege site-ul(daca e ceva ce nu exista da eroare, repede o sa fac sa dea 404)
db/schema.rb		aici se afla bazele de date, e bine de urmarit din cand in cand, pentru a sti ce contine fiecare
public/images		sunt poze publice, precum banere
public/system/avatars	se pun pozele ce sunt uploadate pentru imagini de utilizator/proiecte
