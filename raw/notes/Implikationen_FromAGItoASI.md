# Implikationen von *From AGI to ASI* (DeepMind) für ein neues Wissenschaftssystem

Analyse im Verhältnis zu *Epistemische Dämmerung – v3* (Essay).

Gelesene Quellen:
- `Epistemische_Dämmerung-v3.md` (Essay, 250 Zeilen)
- `fromagitoasi.pdf` — Google-DeepMind-Report *From AGI to ASI* (Genewein, Hutter, Legg et al., arXiv:2606.12683, Juni 2026, 60 S.)

---

## Rahmende Beobachtung

Der DeepMind-Report ist die **technisch disziplinierte Version genau jener „nicht-normalen" Lesart**, die der Essay von der geisteswissenschaftlich-institutionellen Seite vertritt — und er benennt das Kernthema des Essays ausdrücklich als seine eigene offene Forschungsfrage. In der Forschungsagenda (Abschnitt 7.1, Frage 7d, S. 37) steht wörtlich:

> „If research and science can be automated, what pressures will arise on the scientific process? How will epistemic norms and mechanisms to establish consensus on the state of knowledge have to be adapted in light of overwhelming volumes of scientific output?"

Das ist, in einem Satz, das Thema des Essays — gestellt vom führenden Labor, das die auslösende Technologie baut, und dort als *ungelöst* markiert. Das Paper kann sich damit als substantielle Antwort auf eine von DeepMind selbst formulierte, aber bewusst ausgeklammerte Frage positionieren (DeepMind klammert „sociocultural progress" und die Folgen für die Wissenschaft explizit aus, S. 33/37; der Essay füllt genau diese Lücke).

---

## A. Implikationen für ein neues Wissenschaftssystem

### 1. Die konservative Annahme bekommt Rückenwind — und wird zugleich destabilisiert
Der rhetorische Anker des Essays ist die „Peak-Human-Performance"-Annahme: es braucht keine Superintelligenz, um die Diagnose zu tragen. Der Report stützt das (die Normalisierungsthese von Narayanan/Kapoor wird auch hier als *eine* Möglichkeit zitiert, S. 2), bestreitet aber die Prämisse, auf der die Beruhigung der Leser ruht: dass es bei Peak-Human *bleibt*. DeepMinds Kernthese (Abstract, S. 1; Conclusions S. 38):

> „the image of a single transformative step change … could be inaccurate. More apt might be the prospect of a series of transformative societal changes … Preparing for this prospect requires a massively interdisciplinary endeavour of global scope."

**Implikation:** Die Diagnose ist nicht der Endzustand, für den man ein neues System entwerfen kann, sondern möglicherweise ein **Durchgangszustand**. Ein „neues Wissenschaftssystem für den kognitiven Überfluss" wäre dann auf ein bewegliches Ziel hin entworfen. Das schwächt das Argument nicht — es verschärft es: Peak-Human ist eine *untere Schranke* der Disruption, kein Gleichgewicht.

### 2. Validierung als knappe Ressource bekommt ein technisches Fundament
Das Prinzip „Umkehrung der Knappheit" und die „adversarialen Institutionen" haben im Report ihr technisches Gegenstück: DeepMind ruft eine eigene **Wissenschaft des Benchmarkings** aus (S. 30, 35–36) — Benchmarks, die *nicht* auf Humanniveau saturieren, „setter-solver"-Verfahren, kontinuierliche adversariale Evaluation, „multi-agent scaling laws". Das ist die Validierungsschicht, die das neue System ins Zentrum rückt, hier von der Capability-Seite her formuliert. Die These „ein haltbares System organisiert Anreize um die Prüfleistung" lässt sich damit nicht mehr als bloßes Desiderat, sondern als bereits in Gang befindliche (wenn auch capability-getriebene) Disziplinbildung belegen.

### 3. Trennung von Entdeckung und Validierung — mit einer Warnung, die das Argument schärft
Die vier Pfade des Reports (Scaling, Paradigmenwechsel, **rekursive Selbstverbesserung**, **Multi-Agenten-Kollektive**, Abschnitt 5) machen die *Entdeckungsseite* explosiv: „AI Scientist"-Systeme (Lu et al., Novikov et al., S. 19), AlphaEvolve, FunSearch als „algorithmic self-improvement … beyond their training distribution". Das bestätigt den AlphaEvolve-Befund und das Prinzip der institutionellen Trennung. Entscheidend ist aber DeepMinds offene Frage 4d (S. 36): *die Qualität des Verifizierers ist kritisch, und rekursive Distillation kann degenerieren.* Übersetzt: Wenn die Validierungsseite mit denselben Frontier-Modellen und Anreizen läuft, kehrt der **Externalitätskollaps eine Ebene höher wieder.** Ein neues System muss die *Unabhängigkeit und Nicht-Stationaritäts-Immunität der Prüfschicht* garantieren — formale Verifikation (die AlphaEvolve-Asymmetrie) ist die einzige saubere Antwort, die der Report anbietet, aber nur dort, wo formalisierbar.

### 4. Die „harten Kerne" werden unabhängig bestätigt — zwei davon
- **Kontakt mit der Welt:** DeepMind identifiziert die *Embodied Bottleneck* / „physical non-universality" eigenständig als reale Friktion (S. 8, 19; Frage 1h, S. 34) — physische Experimente lassen sich nicht beliebig beschleunigen. Starke Kreuzbestätigung.
- **Formale Verifikation:** die AlphaEvolve-Asymmetrie (opake Entdeckung, prüfbarer Beweis) ist im Report das Modell für „verified program synthesis" und selbstkorrigierende Systeme (S. 19). Der Anker steht.

### 5. Mechanistische Untermauerung der KI-Eigenschaften
Drei Stellen des Reports liefern *technische* Begründungen für Eigenschaften, die der Essay bisher eher phänomenologisch beschreibt:
- **Abstraction Barrier** (Lawrence 2024, S. 8; Frage 1i, S. 35): Wegen hoher Bandbreiten-I/O bilden Maschinen womöglich *gar keine* menschlich-interpretierbaren Abstraktionen. Mechanistisches Fundament für *Opazität*, *Theorielosigkeit* und *Verstehenssimulation* — nicht „wir verstehen es noch nicht", sondern „die Repräsentation ist strukturell nicht-human".
- **Advantages of digital intelligence** (Table 1, S. 9): substrate independence, lossless replication, Geschwindigkeit, high-bandwidth sharing — die Hardware-Begründung des *Grenzkostenkollaps*, der *Varianz über Zeit* und der *Privatisierung der Erkenntnismittel*.
- **Data Wall + „self-delusions"** (S. 16; Ortega et al., Frage 1b, S. 34): synthetische Daten, die „self-delusions" speisen — die mechanistische Fassung der *Datenrekursion*.

### 6. Der Report bestätigt die Sorge unfreiwillig — bei „progress"
DeepMinds eigener Abschnitt „What is progress?" (S. 33) operationalisiert Fortschritt als Capability + Effizienz + „economic compression" (ein Jahrhundert BIP-Wachstum in einem Jahrzehnt). *Verstehen* taucht als Maß nicht auf. Das ist exakt die diagnostizierte Maßstabsverschiebung „von der Erklärung zur Treffergenauigkeit" — vorgeführt am Selbstverständnis des Labors. Ein wertvolles Zitat-Exhibit für den Abschnitt „greater insight statt greater efficiency".

---

## B. Kritische offene Fragen, die das Paper adressieren sollte

**1. Robustheit der Peak-Human-Annahme (die schärfste Lücke).**
Der Essay verteidigt nichts gegen das Superintelligenz-Lager, weil er es als Rückwärts-Extrapolation-aus-der-Zukunft abtut. Der Report zeigt, dass der Fall *disziplinierter* ist als das: Scaling-Laws, rekursive Verbesserungsdynamik, Multi-Agenten-Scaling, Universal-AI-Schranken. Explizit machen: die Diagnose ist ein **Lower Bound**; unter DeepMinds Trajektorie wird sie schlimmer, nicht milder, und das „neue System" ist ein bewegliches Ziel. Offene Frage: *Kann ein für kognitiven Überfluss entworfenes Wissenschaftssystem den Übergang über Peak-Human hinaus überleben — oder ist es selbst transient?*

**2. Sind die menschlichen Anker permanent oder kontingent?**
Der Essay stützt sich auf „Urteilskraft in der Fragestellung" und transformative Kreativität als nicht delegierbar. DeepMind rahmt transformative Kreativität (Bodens Stufe 3, Hassabis' Einstein/Relativitäts-„true test", S. 30–31) als ein *Noch-nicht* und als offene Capability-Frage — nicht als bewiesene Grenze. Für *jeden* Anker sauber trennen: „gegenwärtig empirisch wahr" vs. „strukturell garantiert". Nur Verantwortung/Commitment (nichts zu verlieren) und physischer Weltkontakt sind strukturell; Urteilskraft und Kreativität sind empirisch-kontingent — und damit gefährdeter, als der Essay suggeriert.

**3. Die Rekursion der Validierung (Verifizierer-Unabhängigkeit).**
Wenn Validierung die neue knappe Ressource ist, sie aber mit denselben Modellen erbracht wird (DeepMind: AI-as-judge, rekursive Distillation, „verifier quality critical", Frage 4d), kehrt der Externalitätskollaps wieder. Die Frage *was garantiert die Unabhängigkeit der Prüfschicht?* ausdrücklich stellen — derzeit setzt der Essay die Externalität der adversarialen Institutionen voraus, ohne zu zeigen, wie sie technologisch immun gegen dieselbe Tool-Homogenisierung bleibt, die er beim Peer Review diagnostiziert.

**4. Epistemische Resilienz gemischter Mensch-KI-Kollektive.**
DeepMinds Fragen 5e/5f (S. 36) sind wörtlich die des Essays: *Wie härtet man Agenten-Kollektive gegen „epistemic hijacking and the spread of falsehoods, hallucinations & self-delusions"? Wie sichert man epistemische Resilienz und Wiederherstellbarkeit in asymmetrischen (Mensch-ASI-)Kollektiven?* Die Trias Datenrekursion + Homogenisierung + adversariale Institutionen ist eine Teilantwort. Die Konvergenz explizit machen und das Multi-Agenten-/Group-Agency-Material des Reports (S. 20, „virtual agent economies", „cognitive division of labour") als Mechanismus der „Homogenisierung der Perspektiven" heranziehen.

**5. Letztverantwortung gegen den ökonomischen Gradienten.**
Die offene Frage nach der epistemischen Letztverantwortung trifft auf DeepMinds Befund, dass es einen strukturellen *ökonomischen Druck* gibt, den Menschen aus der Schleife zu drängen („economic and practical pressure to reduce human-in-the-loop oversight", S. 32). Die nicht-delegierbare Verantwortungskette muss gegen einen Gradienten verteidigt werden, den der Report benennt — das nicht als Designwahl, sondern als Kampf gegen eine politische Ökonomie formulieren.

**6. Die interne Spannung: Validierung als Währung vs. „Verstehen" als Wert.**
Hier liegt eine echte Inkonsistenz, die der Report sichtbar macht. Der Essay will *Prüfleistung* zur neuen Währung machen (tendenziell benchmarkbar) **und** „greater insight"/Verstehen im de-Regt-Sinn belohnen (möglicherweise konstitutiv *nicht* benchmarkbar). DeepMind zeigt, dass die Validierungsschicht, die skaliert, gerade die formalisierbar-prüfbare ist — Verstehen taucht in keinem ihrer Maße auf. Offene Frage: *Lässt sich „Verstehen" überhaupt in ein evaluierbares Kriterium überführen — und wenn nicht, wie belohnt ein validierungszentriertes System das Nicht-Benchmarkbare, ohne es erneut zu marginalisieren?* Die schärfste innere Spannung der eigenen Lösungsskizze.

---

## C. Ein rhetorisches Exhibit

Der Report eröffnet mit „Summary Instructions" (S. 2), die den menschlichen Leser anweisen, sich den Text von einem KI-Assistenten zusammenfassen zu lassen, *und* die den KI-Agenten instruieren, wie zu summarizen sei („do not compress the list into fewer bullet points"). Das ist ein **lebendes Exemplar der These**: Das wissenschaftliche Artefakt setzt KI-vermittelte Lektüre nicht nur voraus, es skriptet den maschinellen Leser. Genau wie die Fußnote zur Entstehung des Essays ist diese Sektion „insofern beides: Offenlegung und Beleg" — nur dass DeepMind den Beleg unreflektiert liefert. Ein starker Eröffnungs- oder Schlussakzent für den Abschnitt zur Verstehenssimulation.

---

## Mögliche nächste Schritte
- (a) Integrierbare Textpassage (1–2 Absätze im Duktus des Essays), die *From AGI to ASI* als „die Capability-seitige Bestätigung mit ungelöster Frage 7d" einbaut.
- (b) Die sechs offenen Fragen als präzisere Ergänzung/Schärfung der bestehenden Schlussfragen ausformulieren.
