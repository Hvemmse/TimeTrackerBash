# TimeTrackerBash
a simple time tracker for the commandline

1. **Installation og forberedelse:**
   - Sørg for, at du har Bash installeret på din computer eller server.
   - Kopier scriptet til en tekstfil og gem det med et passende navn, f.eks. `smart_tracker.sh`.
   - Åbn en terminal og naviger til mappen, hvor scriptet er gemt.

2. **Kør scriptet:**
   - For at bruge scriptet skal du angive tre argumenter: starttidspunkt, sluttidspunkt og projektnavn. Eksempelvis:
     ```bash
     ./smart_tracker.sh "09:38" "09:59" "Projekt XYZ"
     ```
   - Scriptet beregner tidsforskellen mellem start- og sluttidspunktet og logger disse oplysninger i filen "dagen.log". Du vil også se resultatet i terminalen.

3. **Se loggen:**
   - Efter at have kørt scriptet kan du se resultaterne ved at åbne logfilen "dagen.log" i samme mappe som scriptet.
   - Logfilen indeholder oplysninger om starttid, sluttid, projektnavn og tidsforskellen i minutter for hver kørte session.

4. **Brug i projektstyring:**
   - Du kan bruge denne smarte tracker til at holde styr på tid brugt på forskellige opgaver eller projekter.
   - Hvis du har flere sessioner, kan du blot køre scriptet igen med de relevante argumenter for hver session.

Husk at tilpasse start- og sluttidspunkter samt projektnavne efter behov. Scriptet vil løbende opdatere logfilen med nye sessioner, så du kan bruge det til at overvåge tidsforbrug på forskellige projekter eller opgaver.
