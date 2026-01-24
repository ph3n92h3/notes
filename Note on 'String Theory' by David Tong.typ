#import "@preview/physica:0.9.5": *

#set heading(numbering: "1.1")
#set math.equation(numbering: "(1)")
#set page(numbering: "1")

#show link: set text(fill: blue)

https://www.damtp.cam.ac.uk/user/tong/string.html

#outline(indent: auto)

= The classical closed string

== The relativistic point particle

Spacetime and metric $ (RR^(1, D - 1), [eta_(mu nu)] = diag(-1, +1, ..., +1)) $

Coordinate $ [X^mu] = (t, arrow(x)), quad mu = 0, ..., D - 1 $

Action $ S = & - m integral dif s \
  = & - m integral dif t sqrt(1 - dot(arrow(x))^2) \
  = & - m integral dif tau sqrt(- dot(X)^mu dot(X)^nu eta_(mu nu)), quad dot(X)^mu = dv(X^mu, tau) $

Momenta $ p_mu = pdv(L, dot(X)^mu) = (m dot(X)^nu eta_(mu nu)) / sqrt(- dot(X)^lambda dot(X)^rho eta_(lambda rho)), quad p_mu p^mu + m^2 = 0 $

Reparametrization invariance(gauge symmetry) $ S = & - m integral dif tilde(tau) sqrt(- dv(X^mu, tilde(tau)) dv(X^nu, tilde(tau)) eta_(mu nu)), quad tilde(tau) = tilde(tau)(tau) $

Poincare invariance $ X^mu -> tensor(Lambda, mu, -nu) X^nu + c^mu => S -> S, quad tensor(Lambda, mu, -nu) eta^(nu rho) tensor(Lambda, sigma, -rho) = eta^(mu sigma) $

Hamiltonian $ H = dot(X)^mu p_mu - L = 0 $

#line(length: 100%, stroke: .4pt)

Einbein $ e(tau) $

Action again $ S = & 1 / 2 integral dif tau (e^(-1) dot(X)^2 - e m^2) \
= & - 1 / 2 integral dif tau sqrt(- g_(tau tau)) (g^(tau tau) dot(X)^2 + m^2), quad e = sqrt(- g_(tau tau)) = 1 / sqrt(- g^(tau tau)) $

Equation of motion for the einbein $ dot(X)^2 + e^2 m^2 = 0 $

Reparametrization invariance again $ tau -> tilde(tau) = tilde(tau)(tau), quad dif s^2 = g_(tau tau) dif tau^2 = g_(tilde(tau) tilde(tau)) dif tilde(tau)^2 => e dif tau = tilde(e) dif tilde(tau) $

== The Nambu-Goto action

Worldsheet coordinate $ [sigma^alpha] = (tau, sigma in [0, 2 pi)), quad alpha = 0, 1 $

Nambu-Goto action $ S = & - T integral dif^2 sigma sqrt(- det gamma), quad gamma_(alpha beta) = pdv(X^mu, sigma^alpha) pdv(X^nu, sigma^beta) eta_(mu nu), [gamma_(alpha beta)] = mat(dot(X)^2, dot(X) dot.c X'; dot(X) dot.c X', X'^2), dot(X)^mu = pdv(X^mu, tau), X^(mu prime) = pdv(X^mu, sigma) \
= & - T integral dif^2 sigma sqrt(- dot(X)^2 X'^2 + (dot(X) dot.c X')^2), quad T = 1 / (2 pi alpha'), alpha' = l_s^2 $

Symmetries:
- Poincare invariance $X^mu -> tensor(Lambda, mu, -nu) X^nu + c^mu$
- Reparametrization invariance $sigma^alpha -> tilde(sigma)^alpha (sigma)$

== The Polyakov action

Polyakov action $ S = & - 1 / (4 pi alpha') integral dif^2 sigma sqrt(- g) g^(alpha beta) partial_alpha X^mu partial_beta X^nu eta_(mu nu) $

Symmetries:
- Poincare invariance $X^mu -> tensor(Lambda, mu, -nu) X^nu + c^mu$
- Reparametrization invariance/diffeomorphism $sigma^alpha -> tilde(sigma)^alpha (sigma), X^mu (sigma) -> tilde(X)^mu (tilde(sigma)) = X^mu (sigma), g_(alpha beta)(sigma) -> tilde(g)_(alpha beta)(tilde(sigma)) = pdv(sigma^gamma, tilde(sigma)^alpha) pdv(sigma^delta, tilde(sigma)^beta) g_(gamma delta)(sigma)$
- Weyl invariance $X^mu (sigma) -> X^mu (sigma), g_(alpha beta)(sigma) -> Omega^2(sigma) g_(alpha beta)(sigma) => g^(alpha beta) = Omega^(-2)(sigma)g^(alpha beta), sqrt(- g) -> Omega^2(sigma) sqrt(- g)$

Conformal gauge $ g_(alpha beta) = upright(e)^(2 phi.alt) eta_(alpha beta) $ $->$ Flat gauge $ g_(alpha beta) = eta_(alpha beta) $

Equation of motion for the worldsheet metric/constraints $ 0 = T_(alpha beta) = - 2 / T 1 / sqrt(- g) pdv(S, g^(alpha beta)) = partial_alpha X dot.c partial_beta X - 1 / 2 eta_(alpha beta) eta^(rho sigma) partial_rho X dot.c partial_sigma X \
=> cases(T_01 = dot(X) dot.c X' = 0, T_00 = T_11 = (dot(X)^2 + X'^2) \/ 2 = 0) $

== Mode expansion

Lightcone coordinates on the worldsheet $ sigma^plus.minus = tau plus.minus sigma $

Equation of motion for $X^mu$ $ partial_+ partial_- X^mu = 0 => X^mu (sigma, tau) = X^mu_L (sigma^+) + X^mu_R (sigma^-), X^mu (sigma, tau) = X^mu (sigma + 2 pi, tau) $

Fourier modes $ X^mu_L (sigma^+) = & 1 / 2 x^mu + 1 / 2 alpha' p^mu sigma^+ + upright(i) sqrt(alpha' / 2) sum_(n != 0) 1 / n tilde(alpha)^mu_n upright(e)^(- upright(i) n sigma^+), \
X^mu_R (sigma^-) = & 1 / 2 x^mu + 1 / 2 alpha' p^mu sigma^- + upright(i) sqrt(alpha' / 2) sum_(n != 0) 1 / n alpha^mu_n upright(e)^(- upright(i) n sigma^-) $ <ModeExpansion> $ Im X^mu = 0 => alpha^mu_n = (alpha^mu_(-n))^star, tilde(alpha)^mu_n = (tilde(alpha)^mu_(- n))^star $

Constraints revisited $ 0 = (partial_- X)^2 = alpha' sum_n L_n upright(e)^(- upright(i) n sigma^-), L_n = 1 / 2 sum_m alpha_(n - m) dot.c alpha_m, alpha^mu_0 = sqrt(alpha' / 2) p^mu \
0 = (partial_+ X)^2 = alpha' sum_n L_n upright(e)^(- upright(i) n sigma^+), L_n = 1 / 2 sum_m tilde(alpha)_(n - m) dot.c tilde(alpha)_m, tilde(alpha)^mu_0 = sqrt(alpha' / 2) p^mu $ $ => L_n = tilde(L)_n = 0, quad n in ZZ $

Level matching $ 0 = L_0 = 1 / 2 sum_n alpha_(-n) dot.c alpha_n = 1 / 2 (alpha_0^2 + 2 sum_(n > 0) alpha_n dot.c alpha_(- n)) = 1 / 2 (alpha' / 2 p^2 + 2 sum_(n > 0) alpha_n dot.c alpha_(- n)) \
=> M^2 = 4 / alpha' sum_(n > 0) alpha_n dot.c alpha_(- n) = 4 / alpha' sum_(n > 0) tilde(alpha)_n dot.c tilde(alpha)_(- n) $

= The quantum closed string
== Covariant quantization

Canonical equal-time commutation relations $ [X^mu (sigma, tau), Pi_nu (sigma', tau)] = upright(i) delta(sigma - sigma') tensor(delta, mu, -nu), [X^mu (sigma, tau), X^nu (sigma', tau)] = [Pi_mu (sigma, tau), Pi_nu (sigma', tau)] = 0, quad Pi_mu = 1 / (2 pi alpha') dot(X)^mu $

Commutation relations for the Fourier modes $ [x^mu, p_nu] = upright(i) tensor(delta, mu, -nu), quad [alpha^mu_n, alpha^nu_m] = [tilde(alpha)^mu_n, tilde(alpha)^nu_m] = n eta^(mu nu) delta_(n + m, 0) $

Vacuum state of the string $ket(0)$ $ alpha^mu_n ket(0\; p) = tilde(alpha)^mu_n ket(0\; p) = 0, forall n > 0 \
hat(p)^mu ket(0\; p) = p^mu ket(0\; p) $

Generic state $ (alpha^(mu_1)_(-1))^(n_(mu_1)) (alpha^(mu_2)_(-2))^(n_(mu_2)) ... (tilde(alpha)^(nu_1)_(-1))^(n_(nu_1)) (tilde(alpha)^(nu_2)_(-2))^(n_(nu_2)) ... ket(0\; p) $

Ghosts $ mel(p'\; 0, alpha^0_1 alpha^0_(-1), 0\; p) tilde - delta^D (p - p') $

Constraints $ mel("phys'", L_n, "phys") = mel("phys'", hat(L)_n, "phys") = 0 $

== Lightcone quantization

Flat metric and worldsheet lightcone coordinates $ dif s^2 = - dif sigma^+ dif sigma^- $

Spacetime lightcone coordinates $ dif s^2 = - 2 dif X^+ dif X^- + sum_(i = 1)^(D - 2) dif X^i dif X^i, X^plus.minus = sqrt(1 / 2) (X^0 plus.minus X^(D - 1)) $

Solution to the equation of motion for $X^+$ $ X^+ = X^+_L (sigma^+) + X^+_R (sigma^-), quad X^+_L = 1 / 2 x^+ + 1 / 2 alpha' p^+ sigma^+, X^+_R = 1 / 2 x^+ + 1 / 2 alpha' p^+ sigma^- \
=> X^+ = x^+ + alpha' p^+ tau $

Constraints $ (partial_+ X)^2 = 0 => partial_+ X^-_L = 1 / (alpha' p^+) sum_(i = 1)^(D - 2) partial_+ X^i partial_+ X^i \
(partial_- X)^2 = 0 => partial_- X^-_R = 1 / (alpha' p^+) sum_(i = 1)^(D - 2) partial_- X^i partial_- X^i $ $ => (alpha' p^-) / 2 = 1 / (2 p^+) sum_(i = 1)^(D - 2) (1 / 2 alpha' p^i p^i + sum_(n != 0) alpha^i_(-n) alpha^i_n) $

Level matching $ M^2 = 2 p^+ p^- - sum_(i = 1)^(D - 2) p^i p^i = 4 / alpha' sum_(i = 1)^(D - 2) sum_(n > 0) alpha^i_(- n) alpha^i_n = 4 / alpha' sum_(i = 1)^(D - 2) sum_(n > 0) tilde(alpha)^i_(- n) tilde(alpha)^i_n $

#line(length: 100%, stroke: .4pt)

Quantization $ [x^i, p^j] = upright(i) delta^(i j), [x^-, p^+] = - upright(i), [alpha^i_n, alpha^j_m] = [tilde(alpha)^i_n, tilde(alpha)^j_m] = n delta^(i j) delta_(n + m, 0) $

Constraints $ M^2 = & 2 p^+ p^- - p^i p^i \
= & 2 / alpha' sum_(i = 1)^(D - 2) sum_(n != 0) alpha^i_(-n) alpha^i_n \
= & 4 / alpha' (1 / 2 sum_(i = 1)^(D - 2) sum_(n < 0) alpha^i_(- n) alpha^i_n + 1 / 2 sum_(i = 1)^(D - 2) sum_(n > 0) alpha^i_(- n) alpha^i_n) \
= & 4 / alpha' (1 / 2 sum_(n < 0) [sum_(i = 1)^(D - 2) alpha^i_n alpha^i_(- n) - n (D - 2)] + 1 / 2 sum_(i = 1)^(D - 2) sum_(n > 0) alpha^i_(- n) alpha^i_n) \
= & 4 / alpha' (sum_(i = 1)^(D - 2) sum_(n > 0) alpha^i_(- n) alpha^i_n + (D - 2) / 2 sum_(n > 0) n) \
= & 4 / alpha' (sum_(i = 1)^(D - 2) sum_(n > 0) alpha^i_(- n) alpha^i_n - (D - 2) / 24) $ $ => M^2 = 4 / alpha' (N - (D - 2) / 24) = 4 / alpha' (tilde(N) - (D - 2) / 24), quad N = sum_(i = 1)^(D - 2) sum_(n > 0) alpha^i_(- n) alpha^i_n, tilde(N) = sum_(i = 1)^(D - 2) sum_(n > 0) tilde(alpha)^i_(- n) tilde(alpha)^i_n $

== The string spectrum

The Tachyon/ground state $ M^2 = - 1 / alpha' (D - 2) / 6 $

The (massless) first excited states $ tilde(alpha)^i_(-1) alpha^j_(-1) ket(0\; p), \# = (D - 2)^2 $ $ M^2 = 4 / alpha' (1 - (D - 2) / 24) = 0 => D = 26 $

(Massive)Higher excited states $ (alpha^i_(-1) alpha^j_(-1) plus.o alpha^i_(-2)) times.o (tilde(alpha)^i_(-1) tilde(alpha)^j_(-1) plus.o tilde(alpha)^i_(-2)) ket(0\; p) \
\# = 2 times [1 / 2 (D - 2) (D - 3) + (D - 2) + (D - 2)] = 2 times [1 / 2 D (D - 2) - 1] $

== The superstring

- The critical dimension of the superstring is $D = 10$.

Four(five) superstring theories:

- Type II strings: both left and right-moving worldsheet fermions, Ramond-Ramond (massless) gauge fields, $cal(N) = 2$, \# supercharges = 32
  - Type IIA strings: 1-form $C_mu$ and 3-form $C_(mu nu rho)$
  - Type IIB strings: 0-form $C_0$, 2-form $C_(mu nu)$ and 4-form $C_(mu nu rho sigma)$
- Heterotic strings: just right-moving worldsheet fermions, non-Abelian gauge field, $cal(N) = 1$, \# supercharges = 16
  - $S O(32)$
  - $E_8 times E_8$
- Type I strings: open and closed strings, flat spacetime

= The Open string and D-brane

Spatial coordinate of the string $ sigma in [0, pi] $

Polyakov action in conformal gauge $ S = & - 1 / (4 pi alpha') integral dif^2 sigma partial_alpha X dot.c partial^alpha X \
delta S = & - 1 / (2 pi alpha') integral_(tau_i)^(tau_f) dif tau integral_0^pi dif sigma partial_alpha X dot.c partial^alpha delta X \
= & 1 / (2 pi alpha') integral dif sigma (partial^2 X) dot.c delta X + 1 / (2 pi alpha') [integral_0^pi dif sigma dot(X) dot.c delta X]_(tau_i)^(tau_f) - 1 / (2 pi alpha') [integral_(tau_i)^(tau_f) dif tau X' dot.c delta X]_(sigma = 0)^(sigma = pi) \
stretch(=)^(lr(delta X^mu|)_(tau = tau_i, tau_f) = 0) & 1 / (2 pi alpha') integral dif sigma (partial^2 X) dot.c delta X - 1 / (2 pi alpha') [integral_(tau_i)^(tau_f) dif tau X' dot.c delta X]_(sigma = 0)^(sigma = pi) $

Boundary conditions $ lr(partial_sigma X^mu delta X_mu|)_(sigma = 0, pi) = 0 $
- Neumann boundary conditions $partial_sigma X^a = 0, a = 0, ..., p$
- Dirichlet boundary conditions $X^I = c^I, I = p + 1, ..., D - 1$
- $S O(1, D - 1) -> S O(1, p) times S O(D - p - 1)$

Mode expansion(@ModeExpansion)
- Neumann boundary conditions: $partial_alpha X^a = 0 => alpha^a_n = tilde(alpha)^a_n$
- Dirichlet boundary conditions: $X^I = c^I => x^I = c^I, p^I = 0, alpha^I_n = - tilde(alpha)^I_n$

== Quantization

Spacetime lightcone coordinate $ X^plus.minus = sqrt(1 / 2) (X^0 plus.minus X^p) $

Spectrum $ M^2 = 1 / alpha' (sum_(i = 1)^(p - 1) sum_(n > 0) alpha^i_(- n) alpha^i_n + sum_(i = p + 1)^(D - 1) sum_(n > 0) alpha^i_(- n) alpha^i_n - a), D = 26, a = 1 $

- Ground state $ alpha^i_n ket(0\; p) = 0, quad n > 0, i = 1, ..., p - 1, p + 1, ..., D - 1 $ $ M^2 = - 1 / alpha' $
- First excited states
  - Oscillators longitudinal to the brane $alpha^a_(-1) ket(0\; p), a = 1, ..., p - 1$, $S O(1, p)$
  - Oscillators transverse to the brane $alpha^I_(-1) ket(0\; p), I = p + 1, ..., D - 1$, $S O(D - p - 1)$
- Higher Excited States $ M^2 = 1 / alpha' (N - 1) $

Superstring:
- Open strings are an ingredient of the type II string theories.
  - Type IIA string theory has stable D$p$-branes with $p$ even.
  - Type IIB string theory has stable D$p$-branes with $p$ odd.
- The heterotic string doesn't have (finite energy) D-branes.

== Brane

Dirac action $ S_(D p) = - T_p integral dif^(p + 1) xi sqrt(- det gamma), quad gamma_(a b) = pdv(X^mu, xi^a) pdv(X^nu, xi^b) eta_(mu nu) $

== Multiple Branes

String that stretches between two parallel D$p$-branes $ X^I (0, tau) = c^I, quad X^I (pi, tau) = d^I $

Mode expansion $ X^I = c^I + ((d^I - c^I) sigma) / pi + "oscillator modes" $

Constraints $ 0 = (partial_+ X)^2 = alpha'^2 p^2 + abs(arrow(d) - arrow(c))^2 / (4 pi^2) + "oscillator modes" $

Spectrum $ M^2 = abs(arrow(d) - arrow(c)) / (2 pi alpha')^2 + "oscillator modes" $

= The conformal field theory

#text(fill: gray)[$
  "Operator" equiv expval("Operator"...) equiv integral cal(D) phi.alt upright(e)^(- S) "Operator"
$]

Euclidean worldsheet coordinates $(sigma^1, sigma^2) = (sigma^1, upright(i) sigma^2)$ $ z = sigma^1 + upright(i) sigma^2, quad macron(z) = sigma^1 - upright(i) sigma^2 \
partial_z equiv partial = 1 / 2 (partial_1 - upright(i) partial_2), quad partial_macron(z) equiv macron(partial) = 1 / 2 (partial_1 + upright(i) partial_2) $

Metric $ dif s^2 = (dif sigma^1)^2 + (dif sigma^2)^2 = dif z dif macron(z) $

Measure $ dif z dif macron(z) = 2 dif sigma^1 dif sigma^2 $

Delta function $ 1 = integral dif^2 z delta(z, macron(z)) = integral dif^2 sigma delta(sigma) $

Conformal transformations of flat (2D) space in the complex Euclidean coordinates $ z -> z' = f(z), macron(z) -> macron(z)' = macron(f)(macron(z)) => dif s^2 = dif z dif macron(z) -> dif s^(2 prime) = dif z' dif macron(z)' = abs(dv(f, z))^2 dif z dif macron(z) = abs(dv(f, z))^2 dif s^2 $

Conformal group for theories defined on $RR^(p, q), p + q > 2$ $S O(p + 1, q + 1)$

== Classical (aspects of) conformal field theory

Stress-energy tensor $ T_(alpha beta) = - (4 pi) / sqrt(g) pdv(S, g^(alpha beta)) $
Traceless $ delta = integral dif^2 sigma pdv(S, g_(alpha, beta)) delta g_(alpha beta) stretch(=)^(delta g_(alpha beta) = epsilon.alt g_(alpha beta)) - 1 / (4 pi) integral dif^2 sigma sqrt(g) epsilon.alt T = 0 $

Stress-tensor in complex coordinates

- Traceless $T = 0 => T_(z macron(z)) = 0$
- Conservation $partial_alpha T^(alpha beta) = 0 => macron(partial) T_(z z) = 0, partial T_(macron(z) macron(z)) = 0 => T_(z z)(z) equiv T(z), T_(macron(z) macron(z))(macron(z)) equiv macron(T)(macron(z))$

Noether currents $ J^z = 0, quad J^macron(z) = T(z) epsilon(z) \
macron(J)^z = macron(T)(macron(z)) macron(epsilon.alt)(macron(z)), quad macron(J)(macron(z)) = 0 $

#line(length: 100%, stroke: .4pt)

Free scalar field $ S = 1 / (4 pi alpha') integral dif^2 sigma partial_alpha X partial^alpha X $

Stress-energy tensor $ T_(alpha beta) = - 1 / alpha' (partial_alpha X partial_beta X - 1 / 2 delta_(alpha beta) (partial X)^2) $
- $T = 0$
- $T_(z macron(z)) = 0, T = - partial X partial X \/ alpha', macron(T) = - macron(partial) X macron(partial) X \/ alpha'$

Equation of motion $ partial macron(partial) X = 0 => X(z, macron(z)) = X(z) + macron(X)(macron(z)) $

== Quantum (aspects of) conformal field theory

Operator product expansion $ expval(cal(O)_i (z, macron(z)) cal(O)_j (w, macron(w)) ...) = sum_k C^k_(i j) (z - w, macron(z) - macron(w)) expval(cal(O)_k (w, macron(w)) ...) $

Ward identity $ & - 1 / (2 pi) integral_epsilon.alt partial_alpha expval(J^alpha (sigma) cal(O)_1(sigma_1) ...) = expval(delta cal(O)_1(sigma_1) ...) \
=> & upright(i) / (2 pi) integral.cont_(partial epsilon.alt) dif z expval(J_z (z, macron(z)) cal(O)_1(sigma_1) ...) - upright(i) / (2 pi) integral.cont_(partial epsilon.alt) dif macron(z) expval(J_macron(z) (z, macron(z)) cal(O)_1(sigma_1) ...) = expval(delta cal(O)_1(sigma_1) ...) $
- for $delta z = epsilon.alt(z)$, $delta cal(O)_1(sigma_1) = - Res[J_z (z) cal(O)_1(sigma_1)] = - Res[epsilon.alt(z) T(z) cal(O)_1(sigma_1)]$
- for $delta macron(z) = macron(epsilon.alt)(macron(z))$, $delta cal(O)_1(sigma_1) = - Res[macron(J)_macron(z)(macron(z)) cal(O)_1(sigma_1)] = - Res[macron(epsilon.alt)(macron(z)) macron(T)(macron(z)) cal(O)_1(sigma_1)]$
here we have used $ upright(i) / (2 pi) integral.cont_(partial epsilon.alt) dif z J_z (z) cal(O)_1 (sigma_1) = - Res[J_z cal(O)_1], J_z (z) cal(O)_1(w, macron(w)) = ... + Res[J_z (z) cal(O)_1(w, macron(w))] / (z - w) + ... $

$ "transformation under conformal symmetry" <-> "OPE with" T \& macron(T) $
- Translation: $delta z = epsilon(z) => cal(O)(z - epsilon.alt) = cal(O)(z) - epsilon.alt partial cal(O)(z) + ... => T(z) cal(O)(w, macron(w)) = ... + partial cal(O)(w, macron(w)) \/ (z - w) + ...$

Weight $(h, tilde(h))$, spin $s = h - tilde(h)$, scaling dimension $Delta = h + tilde(h)$ $ delta z = epsilon.alt z, delta macron(z) = macron(epsilon.alt) macron(z) => delta cal(O) = - epsilon.alt (h cal(O) + z partial cal(O)) - macron(epsilon.alt) (tilde(h) cal(O) + macron(z) macron(partial) cal(O)) $
#text(fill: gray)[$
  delta partial cal(O) = partial delta cal(O) = - epsilon.alt (h partial cal(O) + partial cal(O) + z partial partial cal(O)) - macron(epsilon.alt) (tilde(h) partial cal(O) + macron(z) macron(partial) partial cal(O))
$]
with Ward identity, $ T(z) cal(O)(w, macron(w)) = ... + h (cal(O)(w, macron(w))) / (z - w)^2 + (partial cal(O)(w, macron(w))) / (z - w) + ... \
macron(T)(macron(z)) cal(O)(w, macron(w)) = ... + tilde(h) (cal(O)(w, macron(w))) / (macron(z) - macron(w))^2 + (macron(partial) cal(O)(w, macron(w))) / (macron(z) - macron(w)) + ... $

Primary operator $ T(z) cal(O)(w, macron(w)) = h (cal(O)(w, macron(w))) / (z - w)^2 + (partial cal(O)(w, macron(w))) / (z - w) + "non-singular" \
macron(T)(macron(z)) cal(O)(w, macron(w)) = tilde(h) (cal(O)(w, macron(w))) / (macron(z) - macron(w))^2 + (macron(partial) cal(O)(w, macron(w))) / (macron(z) - macron(w)) + "non-singular" $ $ delta z = & epsilon.alt(z) = epsilon.alt(w) + epsilon.alt'(w)(z - w) + ... \
=> delta cal(O)(w, macron(w)) = & - Res[epsilon.alt(z) T(z) cal(O)(w, macron(w))] \
= & - Res[epsilon.alt(z) (h (cal(O)(w, macron(w))) / (z - w)^2 + (partial cal(O)(w, macron(w))) / (z - w) + ...)] \
= & - h epsilon.alt'(w) cal(O)(w, macron(w)) - epsilon.alt(w) partial cal(O)(w, macron(w)) \
stretch(=)^(epsilon.alt(z) = epsilon.alt z) & - epsilon.alt (h cal(O) + z partial cal(O)) $

== The Free scalar field

Action $ S = 1 / (4 pi alpha') integral dif^2 sigma partial_alpha X partial^alpha X $

Equations of motion $ 0 = & integral cal(D) X dv(, X, d: delta) upright(e)^(- S) = - integral cal(D) X upright(e)^(- S) dv(S, X, d: delta) = - integral cal(D) X upright(e)^(- S) [1 / (2 pi alpha') partial_alpha X dv(, X, d: delta) partial^alpha X] \
= & integral cal(D) X upright(e)^(- S) [1 / (2 pi alpha') partial^2 X] = expval(1 / (2 pi alpha') partial^2 X) $

Propagator $ 0 = integral cal(D) X dv(, X, d: delta) [upright(e)^(- S) X] = & integral cal(D) X upright(e)^(- S) [1 / (2 pi alpha') partial^2 X(sigma) X(sigma') + delta(sigma - sigma')] = expval(1 / (2 pi alpha') partial^2 X(sigma) X(sigma')) + delta(sigma - sigma') $ $ => expval(partial^2 X(sigma) X(sigma')) = - 2 pi alpha' delta(sigma - sigma') => expval(X(sigma) X(sigma')) = - alpha' / 2 ln (sigma - sigma')^2 $

in the path integral with other operator insertions $ #text(fill: gray)[$(X(z) + macron(X)(macron(z))) (X(w) + macron(X)(macron(w))) = & - alpha' / 2 ln[(z - w) (macron(z) - macron(w))] + ... \ $]
X(z) X(w) = & - alpha' / 2 ln (z - w) + ... \
partial X(z) partial X(w) = #text(fill: gray)[$= partial_z X(z) partial_w X(w) = & partial_z partial_w (- alpha' / 2 ln (z - w) + ...) =$] - alpha' / 2 1 / (z - w)^2 + "non-singular" $

Stress-energy tensor $ T = - 1 / alpha' partial X partial X = - 1 / alpha' :partial X partial X: $

- $partial X$ is a primary field with weight $h = 1$ and $tilde(h) = 0$. $ T(z) partial X(w) = & - 1 / alpha' :partial X(z) partial X(z): partial X(w) \
                    = & - 1 / alpha' partial X(z) (- alpha' / 2 1 / (z - w)^2 + "non-singular") times 2 \
                    = & (partial X(z)) / (z - w)^2 + ... \
                    = & (partial X(w)) / (z - w)^2 + (partial^2 X(w)) / (z - w) + ... $
- The field $:upright(e)^(upright(i) k X):$ is primary with weight $h = tilde(h) = alpha' k^2 \/ 4$. $ partial X(z) :upright(e)^(upright(i) k X(w)): = & sum_(n = 0)^infinity (upright(i) k)^n / n! partial X(z) :X(w)^n: \
  = & partial X(z) :1: + sum_(n = 1)^infinity (upright(i) k)^n / n! :X(w)^(n - 1): (- alpha' / 2 1 / (z - w) + ...) times n \
  = & - (upright(i) alpha' k) / 2 ((:upright(e)^(upright(i) k X(w)):) / (z - w) + ...) \
  T(z) :upright(e)^(upright(i) k X(w)): = & - 1 / alpha' :partial X(z) partial X(z): :upright(e)^(upright(i) k X(w)): \
  = & - 1 / alpha' (- (upright(i) alpha' k) / 2) (:partial X(z): :upright(e)^(upright(i) k X(w)):) / (z - w) - 1 / alpha' (- (upright(i) alpha' k) / 2) (:partial X(z) upright(e)^(upright(i) k X(w)):) / (z - w) times 2 + ... \
  = & - 1 / alpha' (- (upright(i) alpha' k) / 2)^2 (:upright(e)^(upright(i) k X(w)):) / (z - w)^2 - 1 / alpha' (- (upright(i) alpha' k) / 2) (:partial X(z) upright(e)^(upright(i) k X(w)):) / (z - w) times 2 + ... \
  = & (alpha' k^2) / 4 (:upright(e)^(upright(i) k X(w)):) / (z - w)^2 + upright(i) k (:partial X(z) upright(e)^(upright(i) k X(w)):) / (z - w) + ...\
  = & (alpha' k^2) / 4 (:upright(e)^(upright(i) k X(w)):) / (z - w)^2 + (partial_w :upright(e)^(upright(i) k X(w)):) / (z - w) + ... $
- $T$ is not primary (in the theory of a single free scalar field) with $(h, tilde(h)) = (2, 0)$ $ T(z) T(w) = & 1 / alpha'^2 :partial X(z) partial X(z): :partial X(w) partial X(w): \
  = & 1 / alpha'^2 (- alpha' / 2 1 / (z - w)^2) times 2 - 1 / alpha'^2 alpha' / 2 (:partial X(z) partial X(w):) / (z - w)^2 times 4 + ... \
  = & (1 \/ 2) / (z - w)^4 - 2 / alpha' (:partial X(z) partial X(w):) / (z - w)^2 + ... \
  = & (1 \/ 2) / (z - w)^4 + (2 T(w)) / (z - w)^2 - 2 / alpha' (partial^2 X(w) partial X(w)) / (z - w) + ... \
  = & (1 \/ 2) / (z - w)^4 + (2 T(w)) / (z - w)^2 + (partial T(w)) / (z - w) + ... $ here we have used $partial X(z) = partial X(w) + (z - w) partial^2 X(w) + ...$.

== The central charge

$ T(z) T(w) = (c \/ 2) / (z - w)^4 + (2 T(w)) / (z - w)^2 + (partial T(w)) / (z - w) + ... $

with Ward identity, $ epsilon.alt(z) = & epsilon.alt(w) + epsilon.alt'(w)(z - w) + 1 / 2 epsilon.alt''(x)(z - w)^2 + 1 / 6 epsilon.alt'''(w) (z - w)^2 + ... \
delta T(w) = & - Res[epsilon.alt(z) T(z) T(w)] \
= & - Res[epsilon.alt(z) ((c \/ 2) / (z - w)^4 + (2 T(w)) / (z - w)^2 + (partial T(w)) / (z - w) + ...)] \
= & - epsilon.alt(w) partial T(w) - 2 epsilon.alt'(w) T(w) - c / 12 epsilon.alt'''(w) $ $ z -> tilde(z)(z) => tilde(T)(tilde(z)) = (pdv(tilde(z), z))^(-2) [T(z) - c / 12 S(tilde(z), z)] $

#line(length: 100%, stroke: .4pt)

From the Euclidean cylinder to the complex plane $ z = upright(e)^(- upright(i) w), w = sigma + upright(i) tau, sigma in [0, 2 pi) $ $    T_"plane" (z) = & (- upright(i) z)^(-2) (T_"cylinder" (w) - c / 12 dot.c 1 / 2) \
T_"cylinder" (w) = & - z^2 T_"plane" (z) + c / 24 $

#line(length: 100%, stroke: .4pt)

Weyl anomaly(in 2D CFT) $ T = - c / 12 R = - tilde(c) / 12 R $

#text(fill: gray)[
  Conservation $ partial T_(z macron(z)) = - macron(partial) T_(z z) $ $ partial_z T_(z macron(z)) partial_w T_(w macron(w)) = & macron(partial)_macron(z) T_(z z) macron(partial)_macron(w) T_(w w) \
  = & macron(partial)_macron(z) macron(partial)_macron(w) ((c \/ 2) / (z - w)^4 + ...) \
  = & c / 2 dot.c 1 / 6 macron(partial)_macron(z) macron(partial)_macron(w) (partial_z^2 partial_w 1 / (z - w) + ...) \
  = & c / 2 dot.c 1 / 6 partial_z^2 partial_w macron(partial)_macron(w) (macron(partial)_macron(z) 1 / (z - w)) + ... \
  = & c / 2 dot.c pi / 3 partial_z^2 partial_w macron(partial)_macron(w) delta(z - w, macron(z) - macron(w)) + ... \
  T_(z macron(z)) T_(w macron(w)) = & (c pi) / 6 partial_z macron(partial)_macron(w) delta(z - w, macron(z) - macron(w)) + ... \
  T(sigma) T(sigma') = & 16 pi T_(z macron(z)) T_(w macron(w)) \
  = & (c pi) / 3 dot.c 8 partial_z macron(partial)_macron(w) delta(z - w, macron(z) - macron(w)) + ... \
  = & - (c pi) / 3 partial^2 delta(sigma - sigma') + ... $ $ delta expval(T) = & delta integral cal(D) phi.alt upright(e)^(- S) T \
  = & 1 / (4 pi) integral cal(D) phi.alt upright(e)^(- S) (T(sigma) integral dif^2 sigma' sqrt(g) delta g^(alpha beta) T_(alpha beta)(sigma')) \
  = & - 1 / (2 pi) integral cal(D) phi.alt upright(e)^(- S) (T(sigma) integral dif^2 sigma' omega(sigma') T(sigma')), quad delta g_(alpha beta) = 2 omega delta_(alpha beta) \
  = & c / 6 partial^2 omega \
  expval(T) = & - c / 12 R $ here we have used Ricci scalar $R = - 2 upright(e)^(- 2 omega) partial^2 omega$ for metric $g_(alpha beta) = upright(e)^(2 omega) delta_(alpha beta)$.]

== The Virasoro algebra

Fourier expansion $ T_"cylinder" (w) = - sum_(m = - infinity)^infinity L_m upright(e)^(upright(i) m w) + c / 24 $
$->$ Laurent expansion $ T(z) = sum_(m = - infinity)^infinity L_m / z^(m + 2), quad L_n = 1 / (2 pi upright(i)) integral.cont dif z z^(n + 1) T(z) $

$L_n$ generates the conformal transformation $delta z = z^(n + 1)$
- $L_(-1)$ generates translations
- $L_0$ generates scaling and rotation

Virasoro algebra $ [L_m, L_n] = & (integral.cont (dif z) / (2 pi upright(i)) integral.cont (dif w) / (2 pi upright(i)) - integral.cont (dif w) / (2 pi upright(i)) integral.cont (dif z) / (2 pi upright(i))) z^(m + 1) w^(n + 1) T(z) T(w) \
= & integral.cont (dif w) / (2 pi upright(i)) integral.cont_w (dif z) / (2 pi upright(i)) z^(m + 1) w^(n + 1) T(z) T(w) \
= & integral.cont (dif w) / (2 pi upright(i)) Res[z^(m + 1) w^(n + 1) ((c \/ 2) / (z - w)^4 + (2 T(w)) / (z - w)^2 + (partial T(w)) / (z - w) + ...)] \
= & integral.cont (dif w) / (2 pi upright(i)) Res[(w^(m + 1) + (m + 1) w^m (z - w) + 1 / 2 m (m + 1) w^(m - 1) (z - w)^2 + 1 / 6 m (m^2 - 1) w^(m - 2) (z - w)^3 + ...) \
  & dot.c w^(n + 1) ((c \/ 2) / (z - w)^4 + (2 T(w)) / (z - w)^2 + (partial T(w)) / (z - w) + ...)] \
= & integral.cont (dif w) / (2 pi upright(i)) w^(n + 1) [w^(m + 1) partial T(w) + 2 (m + 1) w^m T(w) + c / 12 m (m^2 - 1) w^(m - 1)] \
= & (m - n) L_(m + n) + c / 12 m (m^2 - 1) delta_(m + n, 0) $

Eigenstates of $L_0$ $ L_0 ket(psi) = h ket(psi) \
L_0 L_n ket(psi) = (L_n L_0 - n L_n) ket(psi) = (h - n) L_n ket(psi) $

Primary state/highest weight states/ states of lowest energy $ L_n ket(psi) = 0, quad forall n > 0 $
Vacuum state $ L_n ket(0) = 0, quad forall n >= -1 $

#line(length: 100%, stroke: .4pt)

Hamiltonian $ cal(H) = T_(tau tau) = - T_(w w) + macron(T)_(macron(w) macron(w)) = sum_n L_n upright(e)^(- upright(i) n sigma^+) + tilde(L)_n upright(e)^(- upright(i) n sigma^-), cal(H) = cal(H)^dagger => L_n = L_(- n)^dagger $
- For primary state $ket(psi)$, $0 <= abs(L_(-1) ket(psi))^2 = expval(L_1 L_(-1), psi) = expval([L_1, L_(-1)], psi) = expval(2 L_0, psi) = 2 h braket(psi) => h >= 0$
- For vacuum state $ket(0)$, $0 <= abs(L_(-n) ket(0))^2 = expval(L_n L_(-n), 0) = expval([L_n, L_(-n)], 0) = (c \/ 12) n (n^2 - 1) braket(0) => c > 0$

https://www.bilibili.com/video/BV1QDP7eiE4Y

== The state-operator map

- Quantum mechanics $ psi_f (x_f, tau_f) = integral dif x_i G(x_f, x_i) psi_i (x_i, tau_i), G(x_f, x_i) = integral_(x(tau_i) = x_i)^(x(tau_f) = x_f) cal(D) x upright(e)^(upright(i) S) $
- Euclidean cylinder $ Psi_f [phi.alt_f (sigma), tau_f] = integral cal(D) phi.alt_i integral_(phi.alt(tau_i) = phi.alt_i)^(phi.alt(tau_f) = phi.alt_f) cal(D) phi.alt upright(e)^(- S[phi.alt]) Psi_i [phi.alt_i (sigma), tau_i] $
- Complex plane $ Psi_f [phi.alt_f (sigma), r_f] = & integral cal(D) phi.alt_i integral_(phi.alt(r_i) = phi.alt_i)^(phi.alt(r_f) = phi.alt_f) cal(D) phi.alt upright(e)^(- S[phi.alt]) Psi_i [phi.alt_i (sigma), r_i] \
  Psi[phi.alt_f; r] = & integral^(phi.alt(r) = phi.alt_f) cal(D) phi.alt upright(e)^(- S[phi.alt]) cal(O)(z = 0) $

Primary state and primary operator $ L_n ket(cal(O)) = integral.cont (dif z) / (2 pi upright(i)) z^(n + 1) T(z) cal(O)(z = 0) = integral.cont (dif z) / (2 pi upright(i)) z^(n + 1) ((h cal(O)) / z^2 + (partial cal(O)) / z + ...) $
- $L_(-1) ket(cal(O)) = ket(partial cal(O))$
- $L_0 ket(cal(O)) = h ket(cal(O))$
- $L_n ket(cal(O)) = 0, forall n > 0$

#line(length: 100%, stroke: .4pt)

Free scalat field $ X(w, macron(w)) = x + alpha' p tau + upright(i) sqrt(alpha' / 2) sum_(n != 0) 1 / n (alpha_n upright(e)^(upright(i) n w) + tilde(alpha)_n upright(e)^(upright(i) n macron(w))) $ $ partial_w X(w, macron(w)) = & - sqrt(alpha' / 2) sum_n alpha_n upright(e)^(upright(i) n w), alpha_0 = upright(i) sqrt(alpha' / 2) p \
=> partial_z X(z) = & (pdv(z, w))^(-1) partial_w X(w) = - upright(i) sqrt(alpha' / 2) sum_n alpha_n / z^(n + 1) \
alpha_n = & upright(i) sqrt(2 / alpha') integral.cont (dif z) / (2 pi upright(i)) z^n partial X(z) $

Commutation relation $ [alpha_m, alpha_n] = & - 2 / alpha' (integral.cont (dif z) / (2 pi upright(i)) integral.cont (dif w) / (2 pi upright(i)) - integral.cont (dif w) / (2 pi upright(i)) integral.cont (dif z) / (2 pi upright(i))) z^m w^m partial X(z) partial X(w) \
= & - 2 / alpha' integral.cont (dif w) / (2 pi upright(i)) Res[z^m z^n ((- alpha' \/ 2) / (z - w)^2 + ...)] \
= & m integral.cont (dif w) / (2 pi upright(i)) w^(m + n - 1) = m delta_(m + n, 0) $

- Ground state $ket(0) = ket(bold(1))$: $ alpha_m ket(bold(1)) = integral.cont (dif w) / (2 pi upright(i)) w^m partial X(w) = 0, quad forall m > 0 $
- $alpha_(- m) ket(0) = ket(partial^m X)$: on the left hand side $ alpha_n alpha_(-m) ket(0) = (alpha_(- m) alpha_n + n delta_(m, n)) ket(0) = n delta_(m, n) ket(0) $ on the right hand side $ alpha_n ket(partial^m X) = & upright(i) sqrt(2 / alpha') integral.cont (dif w) / (2 pi upright(i)) w^n partial X(w) partial^m X(z = 0) \
  = & upright(i) sqrt(2 / alpha') integral.cont (dif w) / (2 pi upright(i)) w^n lr(partial_z^(m - 1) 1 / (w - z)^2|)_(z = 0) \
  prop & integral.cont (dif w) / (2 pi upright(i)) w^(n - m - 1) = delta_(m, n) $
- Zero mode $ket(0\; p) = ket(upright(e)^(upright(i) p X))$ $ alpha_0 ket(0\; p) = & upright(i) sqrt(2 / alpha') integral.cont (dif w) / (2 pi upright(i)) partial X(w) upright(e)^(upright(i) p X(z = 0)) \
  = & upright(i) sqrt(2 / alpha') integral.cont (dif w) / (2 pi upright(i)) (- (upright(i) alpha' p) / 2 upright(e)^(upright(i) p X) / (w - z) + ...)_(z = 0) \
  = & sqrt(alpha' / 2) p integral.cont (dif w) / (2 pi upright(i)) upright(e)^(upright(i) p X(z = 0)) / w \
  = & sqrt(alpha' / 2) p dot.c upright(e)^(upright(i) p X(z = 0)) = sqrt(alpha' / 2) p ket(0\; p) $

== The conformal field theory with boundary

$
  w = sigma + upright(i), z = upright(e)^(- upright(i) w) \
  sigma in [0, pi] => Im z >= 0
$

Neumann boundary condition at $Im z = 0$ $ T_(alpha beta) n^alpha t^beta = 0 => T_(z z) = T_(macron(z) macron(z)) $

= The polyakov path integral and ghosts

== The path integral

Polyakov action in Euclidean space $ S_"Poly" = & 1 / (4 pi alpha') integral dif^2 sigma sqrt(g) g^(alpha beta) partial_alpha X^mu partial_beta X^nu delta_(mu nu) $

Path integral $ Z = 1 / "Vol" integral cal(D) g cal(D) X upright(e)^(- S_"Poly" [X, g]) $

Gauge transformation $ g_(alpha beta)(sigma) -> g^zeta_(alpha beta)(sigma') = upright(e)^(2 omega(sigma)) pdv(sigma^gamma, sigma'^alpha) pdv(sigma^delta, sigma'^beta) g_(gamma delta)(sigma) $

Faddeev-Popov determinant $ Delta_"FP"^(-1) [g] = integral cal(D) zeta delta(g - hat(g)^zeta) $ $ Z[hat(g)] = & 1 / "Vol" integral cal(D) zeta cal(D) X cal(D) g delta(g - hat(g)^zeta) Delta_"FP" [g] upright(e)^(- S_"Poly" [X, g]) \
= & 1 / "Vol" integral cal(D) zeta cal(D) X Delta_"FP" [hat(g)^zeta] upright(e)^(- S_"Poly" [X, hat(g)^zeta]) \
= & 1 / "Vol" integral cal(D) zeta cal(D) X Delta_"FP" [hat(g)] upright(e)^(- S_"Poly" [X, hat(g)]) \
= & integral cal(D) X Delta_"FP" [hat(g)] upright(e)^(- S_"Poly" [X, hat(g)]) $

Infinitesimal Weyl transformation and diffeomorphism $ delta hat(g)_(alpha beta) = 2 omega hat(g)_(alpha beta) + nabla_alpha v_beta + nabla_beta v_alpha $ $ Delta_"FP"^(-1) [hat(g)] = & integral cal(D) omega cal(D) v delta(2 omega hat(g)_(alpha beta) + nabla_alpha v_beta + nabla_beta v_alpha) \
= & integral cal(D) omega cal(D) v cal(D) beta exp[2 pi upright(i) integral dif^2 sigma sqrt(hat(g)) beta^(alpha beta) (2 omega hat(g)_(alpha beta) + nabla_alpha v_beta + nabla_beta v_alpha)] \
= & integral cal(D) v cal(D) beta exp(4 pi upright(i) integral dif^2 sigma sqrt(hat(g)) beta^(alpha beta) nabla_alpha v_beta) \
Delta_"FP" [hat(g)] = & integral cal(D) b cal(D) c exp(upright(i) S_"ghost"), quad S_"ghost" = 1 / (2 pi) integral dif^2 sigma sqrt(g) b_(alpha beta) nabla^alpha c^beta $

Ghost (field) $ beta_(alpha beta) -> b_(alpha beta) quad v^alpha -> c^alpha $ $ Z[hat(g)] = integral cal(D) X cal(D) b cal(D) c exp(- S_"Poly" [X, hat(g)] - S_"ghost" [b, c, hat(g)]) $

#line(length: 100%, stroke: .4pt)

Conformal gauge $ hat(g)_(alpha beta) = upright(e)^(2 omega) delta_(alpha beta) => S_"ghost" = 1 / (2 pi) integral dif^2 z (b_(z z) partial_macron(z) c^z + b_(macron(z) macron(z)) partial_z v^macron(z)) equiv 1 / (2 pi) integral dif^2 z (b macron(partial) c + macron(b) partial macron(c)) $

== The ghost CFT

Equation of motion $ macron(partial) b = partial macron(b) = macron(partial) c = partial macron(c) = 0 $

Stress tensor $ T = 2 (partial c) b + c partial b, quad macron(T) = 2 (macron(partial) macron(c)) macron(b) + macron(c) macron(partial) macron(b), quad T_(z macron(z)) = 0 $

Operator product expansion $ 0 = integral cal(D) b cal(D) c dv(, b(sigma), d: delta) [upright(e)^(- S_"ghost") b(sigma')] = integral cal(D) b cal(D) c upright(e)^(- S_"ghost") [- 1 / (2 pi) macron(partial) c(sigma) b(sigma') + delta(sigma - sigma')] \
=> macron(partial) c(sigma) b(sigma') = 2 pi delta(sigma - sigma') \
=> b(z) c(w) = 1 / (z - w) + ... => c(z) b(w) = 1 / (z - w) + ... $ $ T(z) c(w) = & 2 :partial c(z) b(z): c(w) + :c(z) partial b(z): c(w) \
          = & 2 partial c(z) 1 / (z - w) + c(z) partial_z 1 / (z - w) + ... \
          = & - c(w) / (z - w)^2 + (partial c(w)) / (z - w) + ... \
T(z) b(w) = & 2 :partial c(z) b(z): b(w) + :c(z) partial b(z): b(w) \
          = & - 2 partial_z 1 / (z - w) b(z) - 1 / (z - w) partial b(z) + ... \
          = & (2 b(w) + 2 partial b(w) (z - w)) / (z - w)^2 - (partial b(w)) / (z - w) + ... \
          = & (2 b(w)) / (z - w)^2 + (partial b(w)) / (z - w) + ... $

Central charge $ T(z) T(w) = (- 13) / (z - w)^4 + (2 T(w)) / (z - w)^2 + (partial T(w)) / (z - w) + ... => c = 26 $

== The non-critical string and Liouville field

Non-critical string action with a worldsheet cosmological constant: $ S_"non-critical" = 1 / (4 pi alpha') integral dif^2 sigma sqrt(g) (g^(alpha beta) partial_alpha X^mu partial_beta X_mu + mu) $

Weyl transformation $ hat(g)_(alpha beta) = upright(e)^(2 omega) g_(alpha beta) $

$
  1 / Z pdv(Z, omega) = & 1 / Z integral cal(D) X upright(e)^(- S) (- pdv(S, hat(g)_(alpha beta)) pdv(hat(g)_(alpha beta), omega)) \
  = & 1 / Z integral cal(D) X upright(e)^(- S) (- 1 / (2 pi) sqrt(hat(g)) T) \
  = & - 1 / (2 pi) sqrt(hat(g)) (- c / 12 R + mu / alpha) \
  = & c / 24 sqrt(g) (R - 2 nabla^2 omega) - 1 / (2 pi alpha') mu upright(e)^(2 omega) \
  => Z[hat(g)] = & Z[g] exp[- 1 / (4 pi alpha') integral dif^2 sigma sqrt(g) (2 mu upright(e)^(2 omega) - (c alpha') / 6 (g^(alpha beta) partial_alpha omega partial_beta omega + R omega))]
$

== States and vertex operator

$ V ~ integral dif^2 z cal(O) $ The physical states are the primary states of the CFT with weight $(1, 1)$. The operator associated to these states are called vertex operators.

- Closed strings in flat space
  - Zero modes $ V_"tachyon" ~ integral dif^2 z :upright(e)^(upright(i) p X): => h = alpha' p^2 \/ 4 = 1 => M^2 = - p^2 = - 4 / alpha' $
  - First excited states $ V_"excited" ~ integral dif^2 z :upright(e)^(upright(i) p X) partial X^mu macron(partial) X^nu: zeta_(mu nu) => h = 1 + alpha' p^2 \/ 4 = 1 => M^2 = -p^2 = 0 $
- Open strings in flat space
  - Zero modes $ V_"tachyon" ~ integral_(partial cal(M)) dif^2 z :upright(e)^(upright(i) p X): $ $ partial X(z) :upright(e)^(upright(i) p X): = & sum_(n = 1)^infinity (upright(i) p)^2 / (n - 1)! :X(w, macron(w))^(n - 1): (- alpha' / 2 1 / (z - w) - alpha' / 2 1 / (z - macron(w))) + ... \
    = & - (upright(i) alpha' p) / 2 :upright(e)^(upright(i) p X(w, macron(w))): (1 / (z - w) + 1 / (z - macron(w))) + ... \
    T(z) :upright(e)^(upright(i) p X): = & (alpha' p^2) / 4 :upright(e)^(upright(i) p X): (1 / (z - w) + 1 / (z - macron(w)))^2 + ... \
    = & (alpha' p^2 :upright(e)^(upright(i) p X):) / (z - w)^2 + ... \ $ $ alpha' p^2 = 1 => M^2 = - p^2 = - 1 / alpha' $
  - First excited states $ V_"photon" ~ integral_(partial cal(M)) dif s zeta_a :partial X^a upright(e)^(upright(i) p X):, a = 0, ..., p => p^a zeta_a = 0, p^2 = 0 $
- More general CFT $ (alpha' p^2) / 4 = 1 - h => M^2 = 4 / alpha' (h - 1) $

= String interactions

Action $ S_"string" = S_"Poly" + lambda chi, quad g_s = upright(e)^lambda, quad chi = 1 / (4 pi) integral dif^2 sigma sqrt(g) R = 2 (1 - g#text(fill: gray)[enus]) $

Partition function $ sum_#[topologies \ metrics] upright(e)^(- S_"string") ~ sum_"topologies" upright(e)^(- 2 lambda (1 - g)) integral cal(D) X cal(D) g upright(e)^(- S_"Poly") $

Scattering amplitude $ cal(A)^((m))(Lambda_i, p_i) = sum_"topologies" g_s^(- chi) 1 / "Vol" integral cal(D) X cal(D) g upright(e)^(- S_"Poly") product_(i = 1)^m V_(Lambda_i)(p_i) $

== Closed string amplitudes at tree level

Scattering amplitude $ cal(A)^((m)) = 1 / g_s^2 1 / "Vol" integral cal(D) X cal(D) g upright(e)^(- S_"Poly") product_(i = 1)^m V_(Lambda_i)(p_i) $

smooth at $z = 0, infinity$ $ l_n = z^(n + 1) partial_z, n = -1, 0, 1 => z -> (a z + b) / (c z + d), a d - b c = 1 $

Conformal Killing group $S L(2; CC) \/ ZZ_2 = P S L(2; CC)$

#line(length: 100%, stroke: .4pt)

Virasoro-Shapiro amplitude $ cal(A)^((m))(p_1, ..., p_m) = & 1 / g_s^2 1 / "Vol"(S L(2; CC)) integral cal(D) X upright(e)^(- S_"Poly") product_(i = 1)^m V(p_i), quad V(p_i) = g_s integral dif^2 z upright(e)^(upright(i) p_i X) equiv g_s integral dif^2 z hat(V)(z, p_i) \
= & g_s^(m - 2) / "Vol"(S L(2; CC)) integral product_(i = 1)^m dif^2 z_i expval(hat(V)(z_1, p_1) ... hat(V)(z_m, p_m)) \
= & g_s^(m - 2) / "Vol"(S L(2; CC)) integral product_(i = 1)^m dif^2 z_i integral cal(D) X exp(- 1 / (2 pi alpha') integral dif^2 z partial X dot.c macron(partial) X) exp(upright(i) sum_(i = 1)^m p_i dot.c X(z_i, macron(z)_i)) \
= & g_s^(m - 2) / "Vol"(S L(2; CC)) integral product_(i = 1)^m dif^2 z_i integral cal(D) X exp(integral dif^2 z 1 / (2 pi alpha') X dot.c partial macron(partial) X + upright(i) sum_(i = 1)^m p_i delta(z - z_i, macron(z) - macron(z)_i) dot.c X) \
~ & g_s^(m - 2) / "Vol"(S L(2; CC)) delta^(26)(sum_i p_i) integral product_(i = 1)^m dif^2 z_i exp((pi alpha') / 2 integral dif^2 z dif^2 z' J(z, macron(z)) 1 / (partial macron(partial)) J(z', macron(z)')), 1 / (partial macron(partial)) = 1 / (2 pi) ln abs(z - z')^2 \
= & g_s^(m - 2) / "Vol"(S L(2; CC)) delta^(26)(sum_i p_i) integral product_(i = 1)^m dif^2 z_i exp(alpha' / 2 sum_(j, l) p_j dot.c p_l ln abs(z_j - z_l)), j != l \
= & g_s^(m - 2) / "Vol"(S L(2; CC)) delta^(26)(sum_i p_i) integral product_(i = 1)^m dif^2 z_i product_(j < l) abs(z_j - z_l)^(alpha' p_j dot.c p_l) $

Four-point amplitude $ z_1 = infinity, quad z_2 = 0, quad z_3 = z,quad z_4 = 1 $ $ cal(A)^((4)) ~ & g_s^2 delta^(26)(sum_i p_i) integral dif^2 z abs(z)^(alpha' p_2 dot.c p_3) abs(1 - z)^(alpha' p_3 dot.c p_4) \
= & g_s^2 delta^(26)(sum_i p_i) (Gamma(- 1 - alpha' s \/ 4) Gamma(- 1 - alpha' t \/ 4) Gamma(- 1 - alpha' u \/ 4)) / (Gamma(2 + alpha' s \/ 4) Gamma(2 + alpha' t \/ 4) Gamma(2 + alpha' u \/ 4)) \ $

Poles in $Gamma(- 1 - alpha' s \/ 4)$ $ - 1 - alpha' s / 4 = 0 => s = - 4 / alpha' = M^2 ~ 1 / (s - M^2) $ $ - 1 - alpha' s / 4 = n in ZZ^- => s = (4 (n - 1)) / alpha' = M_n^2, n in ZZ^+ $

$s$-$t$ duality

== Open string amplitudes (at tree level)

String coupling constant $ chi = 1 / (4 pi) integral_cal(M) dif^2 sigma sqrt(g) R + 1 / (2 pi) integral_(partial cal(M)) dif s k = 2 - 2 h#text(fill: gray)[andles] - b#text(fill: gray)[oundary], quad k = - t^alpha n_beta nabla_alpha t^beta \
g_"open"^2 = g_s $

Conformal Killing group $ Im z = 0 => z -> (a z + b) / (c z + d), a d - b c = 1, a, b, c, d in R => S L(2; RR) \/ ZZ_2 $

Veneziano amplitude $ V(p_i) = sqrt(g_s) integral dif x upright(e)^(upright(i) p_i dot.c X) $ $ cal(A)^((4)) ~ & g_s / ("Vol"(S L(2; RR))) delta^(26)(sum_i p_i) integral product_(i = 1)^4 dif x_i product_(j < l) abs(x_j - x_l)^(2 alpha' p_j dot.c p_l), quad x_1 = 0, x_2 = x, x_3 = 1, x_4 -> infinity \
~ & g_s integral_0^1 dif x abs(x)^(2 alpha' p_1 dot.c p_2) abs(1 - x)^(2 alpha' p_2 dot.c p_3) \
= & g_s [B(- alpha' s - 1, - alpha' t - 1) + B(- alpha' s - 1, - alpha' u - 1) + B(- alpha' t - 1, - alpha' u - 1)] $

Poles $ s = (n - 1) / alpha', n in NN #text(fill: gray)[$equiv {0} union ZZ^+$] $

== One-loop amplitudes

- Not all flat metrics on the torus are equivalent.

Identification $ z equiv z + 2 pi, z equiv z + 2 pi tau, quad tau in CC $

Modular transformations
- $T: tau -> tau + 1$
- $S: tau -> - 1 \/ tau$
$ => tau -> (a tau + b) / (c tau + d), a d - b c = 1, a, b, c, d in ZZ => P S L(2, ZZ) = S L(2, ZZ) \/ ZZ_2 $ $ cal(M) $

Moduli space/fundamental domain of $S L(2; ZZ)$ $ cal(M) tilde.equiv CC \/ S L(2; ZZ) => abs(tau) >= 1 \& Re tau in [- 1 / 2, 1 / 2] $

$S L(2; ZZ)$ invariant measure $ integral (dif^2 tau) / (Im tau)^2 $

#line(length: 100%, stroke: .4pt)

- A Euclidean worldsheet with periodic time has the interpretation of a finite temperature partition function for the theory defined on a cylinder.

Partition function $ Z[tau] = & Tr upright(e)^(- 2 pi Im tau (L_0 + tilde(L)_0)) upright(e)^(- 2 pi upright(i) Re tau (L_0 - tilde(L)_0)) upright(e)^(2 pi Im tau (c + tilde(c)) \/ 24) \
= & Tr q^(L_0 - c \/ 24) macron(q)^(tilde(L) - tilde(c) \/ 24), quad q = upright(e)^(2 pi upright(i) tau), macron(q) = upright(e)^(- 2 pi upright(i) macron(tau)) $

Harmonic oscillator modes of the scalar field $ Tr q^(L_0 - c \/ 24) = 1 / (q^(1 \/ 24)) product_(n = 1)^infinity 1 / (1 - q^n) equiv 1 / eta(q) $

Zero mode of the scalar field $ integral (dif p) / (2 pi) upright(e)^(- 2 pi Im tau dot.c 1 / (4 pi alpha') integral dif sigma (alpha' p)^2) ~ 1 / sqrt(alpha' Im tau) $

Partition function for a single free scalar field $ Z_"scalar" [tau] ~ 1 / sqrt(alpha' Im tau) 1 / (eta(q) eta(macron(q))) $

Partition function for the string(in lightcone gauge) $ Z_"string" = & integral (dif^2 tau) / (Im tau)^2 1 / "Vol"(U(1) times U(1)) (1 / sqrt(alpha' Im tau))^26 (eta(q) eta(macron(q)))^24 \
= & integral dif^2 tau 1 / (Im tau) 1 / (alpha' Im tau)^13 1 / (eta(q) eta(macron(q)))^24 \
= & integral (dif^2 tau) / (Im tau)^2 (1 / sqrt(Im tau) 1 / eta(q) 1 / (macron(eta)(macron(q))))^24 $

#line(length: 100%, stroke: .4pt)

Vacuum amplitude for a single free Massive partial $ Z_1 = & ln Z \
    = & integral cal(D) phi.alt exp(- 1 / 2 integral dif^D x phi.alt (- partial^2 + m^2 phi.alt)) \
    ~ & ln det""^(- 1 \/ 2) (- partial^2 + m^2) \
    = & ln exp(1 / 2 integral (dif^D p) / (2 pi)^D ln (p^2 + m^2)) \
    = & 1 / 2 integral (dif^D p) / (2 pi)^D ln (p^2 + m^2) \
    = & integral (d^D p) / (2 pi)^D integral_0^infinity (dif l) / (2 l) upright(e)^(- (p^2 + m^2) l) \
    ~ & integral_0^infinity dif l 1 / l^(1 + D \/ 2) upright(e)^(- m^2 l) $

Partition function for the string $ Z = & integral_0^infinity dif l 1 / l^14 sum_(n = 0)^infinity upright(e)^(- m_n^2 l), quad m^2 = 2 / alpha' (L_0 + tilde(L)_0 - 2) delta_(L_0, tilde(L)_0) \
= & integral_0^infinity dif l 1 / l^14 integral_(-1 / 2)^(1 / 2) dif s Tr upright(e)^(2 pi upright(i) s (L_0 - tilde(L)_0)) upright(e)^(- 2 (L_0 + tilde(L)_0 - 2) l \/ alpha') \
= & integral (dif^2 tau) / (Im tau)^2 (1 / sqrt(Im tau) 1 / eta(q) 1 / (macron(eta)(macron(q))))^24, quad tau = s + (2 l upright(i)) / alpha', Re tau in [- 1 / 2, 1 / 2], Im tau in [0, infinity) $

= Low energy effective actions

Non-linear sigma models $ S = 1 / (4 pi alpha') integral dif^2 sigma sqrt(g) g^(alpha beta) partial_alpha X^mu partial_beta X^nu G_(mu nu)(X) $

== Couplings

Action $ S = 1 / (4 pi alpha') integral dif^2 sigma sqrt(g) [G_(mu nu)(X) partial_alpha X^mu partial_beta X^nu g^(alpha beta) + upright(i) B_(mu nu)(X) partial_alpha X^mu partial_beta X^nu epsilon.alt^(alpha beta) + alpha' Phi(X) R^((2))], quad sqrt(g) epsilon.alt^12 = +1 $

#line(length: 100%, stroke: .4pt)

Background spacetime metric $ G_(mu nu) $

Expand $ X^mu (sigma) = macron(x)^mu + sqrt(alpha') Y^mu (sigma) \
G_(mu nu) (X) partial X^mu partial X^nu = alpha' [G_(mu nu)(macron(x)) + sqrt(alpha') G_(mu nu, omega)(macron(x)) Y^omega + alpha' / 2 G_(mu nu, omega rho)(macron(x)) Y^omega Y^rho + ...] partial Y^mu partial Y^nu $

Riemann normal coordinates $ G_(mu nu)(X) = & delta_(mu nu) - alpha' / 3 cal(R)_(mu lambda nu kappa) Y^lambda Y^kappa + cal(O)(Y^3) \
S = & 1 / (4 pi) integral dif^2 sigma partial Y^mu partial Y^nu delta_(mu nu) - alpha' / 3 cal(R)_(mu lambda nu kappa) Y^lambda Y^kappa partial Y^mu partial Y^nu $

Dimensional regularization $ expval(Y^lambda (sigma) Y^kappa (sigma')) = 2 pi delta^(lambda kappa) integral (dif^(2 + epsilon) k) / (2 pi)^(2 + epsilon.alt) upright(e)^(upright(i) k dot.c (sigma - sigma')) / k^2 stretch(->)^(sigma - sigma' -> 0) delta^(lambda kappa) / epsilon.alt $

Counterterm $ cal(R)_(mu lambda nu kappa) Y^lambda Y^kappa partial Y^mu partial Y^nu -> cal(R)_(mu lambda nu kappa) Y^lambda Y^kappa partial Y^mu partial Y^nu - 1 / epsilon.alt cal(R)_(mu nu) partial Y^mu partial Y^nu $ which can be absorbed by renormalization $ Y^mu -> Y^mu + alpha' / (6 epsilon.alt) tensor(cal(R), mu, -nu) Y^nu, quad G_(mu nu) -> G_(mu nu) + alpha' / epsilon.alt cal(R)_(mu nu) $

$beta$ function and conformally invariant $ beta_(mu nu)(G) = mu pdv(G_(mu nu)(X; mu), mu) = alpha' cal(R)_(mu nu) = 0 $

- Another anlysis: conformal gauge $ g_(alpha beta) = upright(e)^(2 phi.alt) delta_(alpha beta) $

Dimensional regularization $ S = & 1 / (4 pi alpha') integral dif^(2 + epsilon.alt) sigma upright(e)^(phi.alt epsilon.alt) partial_alpha X^mu partial^alpha X^nu G_(mu nu)(X), quad G_(mu nu) -> G_(mu nu) + alpha' / epsilon.alt cal(R)_(mu nu) \
stretch(=)^(epsilon.alt = d - 2 -> 0) & 1 / (4 pi alpha') integral dif^2 sigma partial_alpha X^mu partial^alpha X^nu [G_(mu nu)(X) + alpha' phi.alt cal(R)_(mu nu)(X)] $

Stress tensor $ T_(alpha beta) = + (4 pi) / sqrt(g) pdv(S, g^(alpha beta)) = - 2 pi pdv(S, phi.alt) delta_(alpha beta) => T = - 1 / 2 cal(R)_(mu nu) partial X^mu partial X^nu = 0 => alpha' cal(R)_(mu nu) = 0 $

#line(length: 100%, stroke: .4pt)

Anti-symmetric field/gauge potential $ B_(mu nu) $

Gauge symmetry $ B_(mu nu) -> B_(mu nu) + partial_mu C_nu - partial_nu C_mu $

Gauge invariant field strength/torsion $H = dif B$ $ H_(mu nu rho) = partial_mu B_(nu rho) + partial_nu B_(rho mu) + partial_rho B_(mu nu) $

#line(length: 100%, stroke: .4pt)

Background dilaton field $ Phi(X) $

String coupling $ g_s = upright(e)^(Phi_0) equiv upright(e)^(lim_(X -> infinity) Phi(X)) $

#line(length: 100%, stroke: .4pt)

$beta$ function

$
  expval(T) = - 1 / (2 alpha') beta_(mu nu)(G) g^(alpha beta) partial_alpha X^mu partial_beta X^nu - upright(i) / (2 alpha') beta_(mu nu)(B) epsilon.alt^(alpha beta) partial_alpha X^mu partial_beta X^nu - 1 / 2 beta(Phi) R^((2))
$ $
  beta_(mu nu)(G) = & alpha' cal(R)_(mu nu) + 2 alpha' nabla_mu nabla_nu Phi - alpha' / 4 H_(mu lambda kappa) tensor(H, -nu, lambda, kappa) \
  beta_(mu nu)(B) = & - alpha' / 2 nabla^lambda H_(lambda mu nu) + alpha' nabla^lambda Phi H_(lambda mu nu) \
  beta(Phi) = & - alpha' / 2 nabla^2 Phi + alpha' nabla_mu Phi nabla^mu Phi - alpha' / 24 H_(mu nu lambda) H^(mu nu lambda)
$

Weyl invariance $ beta_(mu nu)(G) = beta_(mu nu)(B) = beta(Phi) = 0 $

== The low-energy effective action

Low-energy effective action $ S = 1 / (2 kappa_0^2) integral dif^26 X sqrt(- G) upright(e)^(- 2 Phi) (cal(R) - 1 / 12 H_(mu nu lambda) H^(mu nu lambda) + 4 partial_mu Phi partial^mu Phi), quad kappa_0^2 ~ l_s^24 $

Variation $ delta S = 1 / (2 kappa_0^2 alpha') integral dif^26 X sqrt(- G) upright(e)^(- 2 Phi) [delta G_(mu nu) beta^(mu nu)(G) - delta B_(mu nu) beta^(mu nu)(B) - (2 delta Phi + 1 / 2 G^(mu nu) delta G_(mu nu)) (tensor(beta, lambda, -lambda)(G) - 4 beta(Phi))] $

String metric or sigma-model metric/string frame $G_(mu nu)$ and Einstein metric/Einstein frame $tilde(G)_(mu nu)$ $ S = 1 / (2 kappa^2) integral dif^26 X sqrt(- tilde(G)) (tilde(cal(R)) - 1 / 12 upright(e)^(- tilde(Phi) \/ 3) H_(mu nu lambda) H^(mu nu lambda) - 1 / 6 partial_mu tilde(Phi) partial^mu tilde(Phi)), \
quad tilde(Phi) = Phi - Phi_0, tilde(G)_(mu nu)(X) = upright(e)^(- 4 tilde(Phi) \/ (D - 2)) G_(mu nu)(X), kappa^2 = kappa_0^2 upright(e)^(2 Phi_0) ~ l_s^24 g_s^2 $

Corrections to Einstein's equations(2-loop sigma-model $beta$ function) $ beta_(mu nu) = alpha' cal(R)_(mu nu) + 1 / 2 alpha'^2 cal(R)_(mu lambda rho sigma) tensor(cal(R), -nu, lambda, rho, sigma) + ... = 0 $
- 2-loop corrections in heterotic superstring
- 4-loop corrections in type II superstring

#line(length: 100%, stroke: .4pt)

$
  S_"superstring" = & S_1 + S_2 + S_"fermi" \
  S_1 = & 1 / (2 kappa_0^2) integral dif^10 X sqrt(- G) upright(e)^(- 2 Phi) (cal(R) - 1 / 2 abs(tilde(H)_3)^2 + 4 partial_mu Phi partial^mu Phi)
$

- Type II: $tilde(H)_3 = H_3 = dif B_2$
  - Type IIA $ S_2 = - 1 / (4 kappa_0^2) integral dif^10 X [sqrt(- G) (abs(F_2)^2 + abs(tilde(F)_4)^2) + B_2 and F_4 and F_4], \
    F_2 = dif C_1, F_4 = dif C_3, tilde(F)_4 = F_4 - C_1 and H_3 $
  - Type IIB $ S_2 = - 1 / (4 kappa_0^2) integral dif^10 X [sqrt(- G) (abs(F_1)^2 + abs(tilde(F)_3)^2 + 1 / 2 abs(tilde(F)_5)^2) + C_4 and H_3 and F_3], \
    F_1 = dif C_0, F_3 = dif C_2, F_5 = dif C_4, tilde(F)_3 = F_3 - C_0 and H_3, tilde(F)_5 = F_5 - 1 / 2 C_2 and H_3 + 1 / 2 B_2 and F_3, tilde(F)_5 equiv ""^star tilde(F)_5 $
- Heterotic $tilde(H)_3 = dif B_2 - alpha' omega_3 \/ 4, omega_3 = Tr(A_1 and dif A_1 + 2 / 3 A_1 and A_1 and A_1)$ $ S_2 = alpha' / (8 kappa_0^2) integral dif^10 X sqrt(- G) Tr abs(F_2)^2 $

== Some simple solutions

Compactifications $RR^(1, 3) times XX$ $ S_(E H) = 1 / (2 kappa^2) integral dif^26 X sqrt(- tilde(G)) tilde(cal(R)) = "Vol"(XX) / (2 kappa^2) integral dif^4 X sqrt(- G_(4d)) cal(R)_(4d) => 8 pi G_N^(4d) = kappa^2 / "Vol"(XX) => l_p^((4d)) ~ (g_s l_s^12) / sqrt("Vol"(XX)) $

#line(length: 100%, stroke: .4pt)

With an infinite, static, straight string stretched in the $X^1$ direction as a $delta$ function string source $            dif s^2 = & f(r)^(-1) (- dif t^2 + dif X_1^2) + sum_(i = 2)^25 dif X_i^2 \
                 B = & (f(r)^(-1) - 1) dif t and dif X_1 \
upright(e)^(2 Phi) = & f(r)^(-1), quad r^2 = sum_(i = 2)^25 X_i^2, f(r) = 1 + (g_s^2 N l_s^22) / r^22 $
$N$ is the number of strings which source the background $ 1 / g_s^2 integral_(SS^23) ""^star H_3 = N in ZZ $

#line(length: 100%, stroke: .4pt)

- $p$-brane with electrical charge $->$ $(p + 1)$-form gauge potential $C_(p + 1)$ $->$ $(p + 2)$-form field strength $G_(p + 2) = dif C_(p + 1)$ $->$ $(p + 1)$-dimensional object couples $ mu integral_W C_(p + 1), $ electrical charge $ q = integral_(SS^(D - p - 2)) ""^star G_(p + 2) = integral_(SS^(D - p - 2)) tilde(G)_(D - p - 2) $
- $(D - p - 4)$-brane with magnetic charge $->$ $(D - p - 3)$-form gauge potential $tilde(C)_(D - p - 3)$ $->$ $(D - p - 2)$-form field strength $tilde(G)_(D - p - 2) = dif tilde(C)_(D - p - 3)$ $->$ $(D - p - 3)$-dimensional object couples $ tilde(mu) integral_tilde(W) tilde(C)_(D - p - 3), $ magnetic charge $ g = integral_(SS^(p + 2)) G_(p + 2) ~ integral_(SS^(p + 2)) ""^star tilde(G)_(D - p - 2) $

magnetic 21-brane of the bosonic string $            dif s^2 = & (- dif t^2 + sum_(i = 1)^21 dif X_i^2) + h(r) (dif X_22^2 + ... dif X_25^2) \
       tilde(B)_22 = & (1 - h(r)^(-2)) dif t and dif X_1 and ... and dif X_21, quad dif tilde(B)_22 = ""^star dif B_2 \
upright(e)^(2 Phi) = & h(r) = 1 + (N l_s^2) / r^2, quad r^2 = sum_(i = 22)^25 X_i^2 $

#line(length: 100%, stroke: .4pt)

$
  D != 26, quad beta(Phi) = (D - 26) / 6 - alpha' / 2 nabla^2 Phi + alpha' nabla_mu Phi nabla^mu Phi - alpha' / 24 H_(mu nu lambda) H^(mu nu lambda) = 0
$

Low-energy effective action(in string frame) $ S = 1 / (2 kappa_0^2) integral dif^D X sqrt(- G) upright(e)^(- 2 Phi) (cal(R) - 1 / 12 H_(mu nu lambda) H^(mu nu lambda) + 4 partial_mu Phi partial^mu Phi - (2 (D - 26)) / (3 alpha')) $

Linear dilaton CFT $ partial_mu Phi partial^mu Phi = (26 - D) / (6 alpha') => cases(Phi = sqrt((26 - D) / (6 alpha')) X^1 quad & D < 26, Phi = sqrt((D - 26) / (6 alpha')) X^0 quad & D > 26) $

(Worldsheet) Action $ S_"dilaton" = 1 / (4 pi) integral dif^2 sigma sqrt(g) Phi(X) R^((2)) $

Variation $ delta S_"dilaton" = 1 / (4 pi) integral dif^2 sigma sqrt(g) (nabla^alpha nabla^beta Phi - nabla^2 Phi g^(alpha beta)) delta g_(alpha beta) $

Stress-energy tnesor(in flat space $g_(alpha beta) = delta_(alpha beta)$) $ T^"dilaton"_(alpha beta) = - partial_alpha partial_beta Phi + partial^2 Phi delta_(alpha beta), quad T^"dilaton" = - partial^2 Phi, macron(T)^"dilaton" = - macron(partial)^2 Phi $

Linear dilaton $ Phi(X) = Q X => T = - 1 / alpha' :partial X partial X: - Q partial^2 X $

Central charge $ c = D + 6 alpha' Q^2 $

== D-branes revisited: background gauge fields

Action of the open string in flat space with boundary gauge field $A_a (X)$ $ S = & S_"Neumann" + S_"Dirichlet" \
S_"Neumann" = & 1 / (4 pi alpha') integral_cal(M) dif^2 sigma partial^alpha X^a partial_alpha X^b delta_(a b) + upright(i) integral_(partial cal(M)) dif tau A_a (X) dot(X)^a, quad a, b = 0, ..., p \
S_"Dirichlet" = & 1 / (4 pi alpha') integral_cal(M) dif^2 sigma partial^alpha X^I partial_alpha X^J delta_(I J), quad I, J = p + 1, ..., D - 1 $

Expand the fields $ X^a (sigma) = macron(x)^a (sigma) + sqrt(alpha') Y^a (sigma) $
(Classical) Equation of motion and boundary condition $ partial^2 macron(x)^a = 0, quad lr((partial_sigma macron(x)^a + 2 pi alpha' upright(i) F^(a b) partial_tau macron(x)_b)|)_(sigma = 0) = 0, quad F_(a b) = partial_a A_b - partial_b A_a $

Expand the (Neumann) action $ S[macron(x) + sqrt(alpha') Y] = S[macron(x)] + 1 / (4 pi) integral_cal(M) dif^2 sigma partial Y^a partial Y^b delta_(a b) + (upright(i) alpha') / 2 integral_(partial cal(M)) dif tau (F_(a b) Y^a dot(Y)^b + partial_a F_(b c) Y^a Y^b dot(macron(x))^c) + ... $

Propagator/Green's function $expval(Y^a (z, macron(z)) Y^b (w, macron(w))) = G^(a b)(z, macron(z); w, macron(w))$ $ partial macron(partial) G^(a b)(z, macron(z)) = - 2 pi delta^(a b)(z, macron(z)), quad lr((partial_sigma G^(a b)(z, macron(z); w, macron(w)) + 2 pi alpha' upright(i) tensor(F, a, -c) partial_tau G^(c b)(z, macron(z); w, macron(w)))|)_(sigma = 0) = 0 \
G^(a b) = - delta^(a b) ln abs(z - w) - 1 / 2 ((1 - 2 pi alpha' F) / (1 + 2 pi alpha' F))^(a b) ln(z - macron(w)) - 1 / 2 ((1 + 2 pi alpha' F) / (1 - 2 pi alpha' F))^(a b) ln(macron(z) - w) $

Counterterm $ - (upright(i) 2 pi alpha'^2) / epsilon.alt integral_(partial cal(M)) dif tau partial_b F_(a c) [1 / (1 - 4 pi^2 alpha'^2 F^2)]^(a b) dot(macron(x))^c $

Condition of conformal invariance $ beta_c (F) = partial_b F_(a c) [1 / (1 - 4 pi^2 alpha'^2 F^2)]^(a b) = 0 $

Born-Infeld action(whose equation of motion as above) $ S = & - T_p integral dif^(p + 1) xi sqrt(- det (eta_(a b) + 2 pi alpha' F_(a b))) \
  = & - T_p integral dif^(p + 1) xi (1 + (2 pi alpha')^2 / 4 F_(a b) F^(a b) + ...) $

== The DBI action

DBI action $ S_(D B I) = - T_p integral dif^(p + 1) xi sqrt(- det(gamma_(a b) + 2 pi alpha' F_(a b))), quad gamma_(a b) = pdv(X^mu, xi^a) pdv(X^nu, xi^b) eta_(mu nu) $

Reparameterization invariance $->$ static gauge $ X^a = xi^a, a = 0, ..., p => gamma_(a b) = eta_(a b) + pdv(X^I, xi^a) pdv(X^J, xi^b) delta_(I J) $

Expand $ S = - (2 pi alpha')^2 T_p integral dif^(d + 1) xi (1 / 4 F_(a b) F^(a b) + 1 / 2 partial_a phi^I partial^a phi.alt^I + ...), phi.alt^I = X^I \/ 2 pi alpha' $

Coupling to closed string fields $ S_(D B I) = - T_p integral dif^(p + 1) xi upright(e)^(- tilde(Phi)) sqrt(- det(gamma_(a b) + 2 pi alpha' F_(a b) + B_(a b))), quad gamma_(a b) = pdv(X^mu, xi^a) pdv(X^nu, xi^b) eta_(mu nu), B_(a b) = pdv(X^mu, xi^a) pdv(X^nu, xi^b) B_(mu nu) $

Gauge transformation $ B_(mu nu) -> B_(mu nu) + partial_mu C_nu - partial_nu C_mu, A_a -> A_a - 1 / (2 pi alpha') C_a => S_(D B I) -> S_(D B I) $

== The Yang-Mills action

N coincident D-branes $->$ gauge field $tensor((A_a), m, -n), a = 0, ..., p; m, n = 1, ..., N$, field strength $ F_(a b) = partial_a A_b - partial_b A_a + upright(i) [A_a, A_b] $

Low-energy action of N coincident D$p$-branes $ S = - (2 pi alpha')^2 T_p integral dif^(d + 1) xi Tr(1 / 4 F_(a b) F^(a b) + 1 / 2 cal(D)_a phi.alt^I cal(D)^a phi.alt^I - 1 / 4 sum_(I != J) [phi.alt^I, phi.alt^J]^2), quad cal(D)_a phi.alt^I = partial_a phi.alt^I + upright(i) [A_a, phi.alt^I] $

Coupling constant $ g_(Y M)^2 = 1 / (alpha'^2 T_p) ~ l_s^(p - 3) g_s $

Symmetry group $ S O(1, D - 1) -> S O(1, p) times S O(D - p - 1) $
- Lorentz group of the D-brane worldvolume $S O(1, p)$
- Global symmetry of the D-brane theory $S O(D - p - 1)$

Branes are separated $->$ symmetry breaking $U(N) -> U(1)^N$ $->$ Higgs machanism

= Compactification and T-duality

Background spacetime $ RR^(1, 24) times SS^1, quad X^25 equiv X^25 + 2 pi R $

== The view from spacetime

- Metric $->$ metric $tilde(G)_(mu nu)$ + 1-form $A_mu$ + scalar $sigma$

Metric in Einstein frame $ dif s^2 = tilde(G)_(mu nu) dif X^mu dif X^nu + upright(e)^(2 sigma) (dif X^25 + A_mu dif X^nu)^2, quad mu, nu = 0, ..., 24 $

Diffeomorphism $delta X^mu = V^mu (X), delta X^25 = Lambda(X^mu)$ $ delta G_(mu nu) = nabla_mu V_nu + nabla_nu V_mu, quad delta A_mu = partial_mu Lambda $

Ricci scalar $ cal(R)^((26)) = cal(R) - 2 upright(e)^(-sigma) nabla^2 upright(e)^sigma - 1 / 4 upright(e)^(2 sigma) F_(mu nu) F^(mu nu), quad cal(R) equiv cal(R)^((25)) $

Action $ S = 1 / (2 kappa^2) integral dif^26 X sqrt(- tilde(G)^((26))) cal(R)^((26)) = (2 pi R) / (2 kappa^2) integral dif^25 X sqrt(- tilde(G)) upright(e)^sigma (cal(R) - 1 / 4 upright(e)^(2 sigma) F_(mu nu) F^(mu nu) + partial_mu sigma partial^mu sigma) $

- Scalar in $D$ dimensions $->$ Scalar in $D - 1$ dimensions
- Anti-symmetric 2-form: 2-form $B_(mu nu)$ + 1-form $tilde(A)_mu = B_(mu 25)$

#line(length: 100%, stroke: .4pt)

Fourier modes of the scalar field $Phi$/Kaluza-Klein modes $ Phi (X^mu; X^25) = sum_(n = - infinity)^infinity Phi_n (X^mu) upright(e)^(upright(i) n X^25 \/ R), quad Phi_n^star = Phi_(- n) $

Kinetic terms(ignore gravity) $ integral dif^26 X [partial_mu Phi partial^mu Phi + (partial_25 Phi)^2] = 2 pi R integral dif^25 X sum_(n = - infinity)^infinity (partial_mu Phi_n partial^mu Phi_(- n) + n^2 / R^2 abs(Phi_(- n))^2), quad M_n^2 = n^2 / R^2 $

Diffeomorphism $X^25 -> X^25 + Lambda(X^mu)$ $ Phi_n -> exp((upright(i) n Lambda) / R) Phi_n $
$->$ charge $n \/ R$

== The view from the worldsheet

- Quantization of the spatial momentum $p^25$ $ p^25 = n / R, quad n in ZZ $
- General boundary condition: the winding number $m in ZZ$ $ X^25 (sigma + 2 pi) = X^25 (sigma) + 2 pi m R $

Mode expansion $ X^25 (sigma, tau) = & x^25 + (alpha' n) / R tau + m R sigma + "oscillator modes" \
= & X^25_L (sigma^+) + X^25_R (sigma^-) \
X^25_L (sigma^+) = & 1 / 2 x^25 + 1 / 2 alpha' p_L sigma^+ + upright(i) sqrt(alpha' / 2) sum_(n != 0) 1 / n tilde(alpha)^25_n upright(e)^(- upright(i) n sigma^+) \
X^25_R (sigma^-) = & 1 / 2 x^25 + 1 / 2 alpha' p_R sigma^- + upright(i) sqrt(alpha' / 2) sum_(n != 0) 1 / n alpha^25_n upright(e)^(- upright(i) n sigma^-) $

Spectrum $ M^2 = & - sum_(mu = 0)^24 p_mu p^mu, quad mu = 0, ..., 24 \
    = & p_L^2 + 4 / alpha' (tilde(N) - 1) = p_R^2 + 4 / alpha' (N - 1), quad N - tilde(N) = n m \
    = & n^2 / R^2 + (m^2 R^2) / alpha'^2 + 2 / alpha' (N + tilde(N) - 2) $

#line(length: 100%, stroke: .4pt)

- $n = 0, m = 0, N = tilde(N) = 1 => M = 0$
  - $alpha_(-1)^mu alpha_(-1)^nu ket(0\; p)$: metric $G_(mu nu)$, anti-symmetric tensor $B_(mu nu)$, scalar $Phi$
  - $(alpha_(-1)^mu tilde(alpha)_(-1)^25 + alpha_(-1)^25 tilde(alpha)_(-1)^mu) ket(0\; p), (alpha_(-1)^mu tilde(alpha)_(-1)^25 - alpha_(-1)^25 tilde(alpha)_(-1)^mu) ket(0\; p)$: vector field $A_mu$ from the metric and vector field $tilde(A)_mu$ from the anti-symmetric field
  - $alpha_(-1)^25 tilde(alpha)_(-1)^25 ket(0\; p)$: scalar $sigma$
- $n != 0, m != 0$, vertex operators for photons and $(m, n)$tachyon $ V_plus.minus (p) ~ integral dif^2 z zeta_mu (partial X^mu macron(partial) macron(X)^25 plus.minus partial X^25 macron(partial) macron(X)^mu) upright(e)^(upright(i) p dot.c X), V_(m, n) (p) ~ integral dif^2 z upright(e)^(upright(i) p dot.c X) upright(e)^(upright(i) p_L dot.c X^25 + upright(i) p_R dot.c macron(X)^25) $ 3-point coupling $ expval(V_plus.minus (p_1) V_(m, n)(p_2) V_(-m, -n)(p_3)) ~ delta^25 (sum_i p_i)zeta_mu (p_2^mu - p_3^mu) (p_L plus.minus p_R) $ charge $ p_L + p_R ~ n / R, quad p_L - p_R ~ (m R) / alpha' $
- Enhanced gauge symmetry, for example, $R = sqrt(alpha')$, $U(1) times U(1) -> S U(2)$
  - $N = tilde(N) = 1, m = n = 0$
  - $N = tilde(N) = 0, n = plus.minus 2, m = 0$ or $N = tilde(N) = 0, n = 0, m = plus.minus 2$: KK modes of tachyon or winding mode of tachyon
  - $N = 1, tilde(N) = 0, n = m = plus.minus 1$ or $N = 1, tilde(N) = 0, n = - m = plus.minus 1$: spin 1 fields $alpha_(-1)^mu ket(0\; p)$ or $tilde(alpha)_(-1)^mu ket(0\; p)$

== T-duality

Spectrum $ R <-> alpha' / R \& m <-> n => M^2 = n^2 / R^2 + (m^2 R^2) / alpha'^2 + 2 / alpha' (N + tilde(N) - 2) <-> M^2 $

New scalar $ Y^25 = X_L^25 (sigma^+) - X_R^25 (sigma^-), quad partial_alpha X = epsilon.alt_(alpha beta) partial^beta Y $

Action $ S[X] = 1 / (4 pi alpha') integral dif^2 sigma partial_alpha X partial^alpha X stretch(=)^(X equiv R phi) R^2 / (4 pi alpha') integral dif^2 sigma partial_alpha phi partial^alpha phi = S[phi], quad X equiv X + 2 pi R, phi equiv phi + 2 pi $
Euclidean partition function $ Z = integral cal(D) phi upright(e)^(- S[phi]) $

Another action $ S[phi, theta, A] = R^2 / (4 pi alpha') integral dif^2 sigma cal(D)_alpha phi cal(D)^alpha phi + upright(i) / (2 pi) integral dif^2 sigma theta epsilon.alt^(alpha beta) partial_alpha A_beta, quad cal(D)_alpha phi = partial_alpha phi + A_alpha $
Gauge symmetry $ phi -> phi + lambda, quad A_alpha -> A_alpha - partial_alpha lambda $
Partition function $ Z = & 1 / "Vol" integral cal(D) phi cal(D) theta cal(D) A upright(e)^(- S[phi, theta, A]) \
stretch(=)^(phi = 0) & integral cal(D) theta cal(D) A exp(- R^2 / (4 pi alpha) integral dif^2 sigma A_alpha A^alpha + upright(i) / (2 pi) integral dif^2 sigma epsilon.alt^(alpha beta) partial_alpha theta A_beta) \
= & integral cal(D) theta exp(- tilde(R)^2 / (4 pi alpha') integral dif^2 sigma partial_alpha theta partial^alpha theta), quad tilde(R) = alpha' / R $

- T-Duality for superstring
- Mirror symmetry
