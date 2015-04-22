local(pedro, santamaria, segunda).
local(pedro, santamaria, terca).
local(pedro, portoalegre, quarta).
local(pedro, santamaria, quinta).
local(pedro, apartamento, sexta).

local(caren, portoalegre, segunda).
local(caren, portoalegre, terca).
local(caren, portoalegre, quarta).
local(caren, santamaria, quinta).
local(caren, apartamento, sexta).

local(henrique, apartamento, segunda).
local(henrique, portoalegre, terca).
local(henrique, apartamento, quarta).
local(henrique, apartamento, quinta).
local(henrique, apartamento, sexta).

local(bia, apartamento, segunda).
local(bia, portoalegre, terca).
local(bia, portoalegre, quarta).
local(bia, santamaria, quinta).
local(bia, apartamento, sexta).

local(adriano, apartamento, segunda).
local(adriano, apartamento, terca).
local(adriano, santa maria, quarta).
local(adriano, apartamento, quinta).
local(adriano, apartamento, sexta).

local(alice, apartamento, segunda).
local(alice, portoalegre, terca).
local(alice, portoalegre, quarta).
local(alice, apartamento, quinta).
local(alice, apartamento, sexta).

local(bernardo, santamaria, segunda).
local(bernardo, santamaria, terca).
local(bernardo, portoalegre, quarta).
local(bernardo, santamaria, quinta).
local(bernardo, apartamento, sexta).

local(maria, apartamento, segunda).
local(maria, santamaria, terca).
local(maria, santamaria, quarta).
local(maria, santamaria, quinta).
local(maria, apartamento, sexta).

vitima(anita).

insano(adriano).
insano(maria).


pobre(bernardo).
pobre(bia).
pobre(pedro).
pobre(maria).


rico(henrique).
rico(adriano).
rico(caren).
rico(alice).

relacionamento(anita, bernardo).
relacionamento(bernardo, caren).
relacionamento(anita, pedro).
relacionamento(pedro, alice).
relacionamento(alice, henrique).
relacionamento(henrique, maria).
relacionamento(maria, adriano).
relacionamento(adriano, caren).

relacionamento2(A, B) :- relacionamento(A, B).
relacionamento2(A, B) :- relacionamento(B, A).
ciume(X, Y) :- relacionamento2(Z, X), relacionamento2(Y, Z).
ciumento(X):- ciume(X, Y), vitima(Y).


bastao(X) :- local(X, santamaria, quarta); local(X, portoalegre, quinta).
martelo(X) :- local(X, apartamento, quarta); local(X, apartamento, quinta).
arma(X) :- bastao(X); martelo(X).
chave(X) :- local(X, santamaria, segunda); local(X, portoalegre, terca).
entra_apartamento(X) :- local(X, apartamento, quinta); local(X, apartamento, sexta).

acesso(X) :- arma(X), chave(X), entra_apartamento(X).
motivo(X) :- pobre(X); insano(X); ciumento(X).


assassino(X) :- motivo(X), acesso(X).