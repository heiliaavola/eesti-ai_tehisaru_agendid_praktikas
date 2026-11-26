# Tehisaru agendid praktikas: seadistusjuhend

Tee see juhend läbi enne töötuba. Aega kulub umbes 15 minutit. Vajad sülearvutit, internetiühendust ja e-posti aadressi. Arvutisse ei pea midagi paigaldama: kõik töötab brauseris.

## 1. Loo GitHubi konto

Kui sul on GitHubi konto juba olemas, jäta see samm vahele.

1. Ava [github.com/signup](https://github.com/signup).
2. Sisesta e-posti aadress, parool ja kasutajanimi.
3. GitHub saadab e-postile koodi. Sisesta see.

GitHub on veebikeskkond, kus hoitakse tarkvaraprojekte. Töötoas kasutame selle tasuta pilvearvutit, mille nimi on Codespaces.

## 2. Ava töötoa keskkond

1. Klõpsa allolevat musta nuppu **Open in GitHub Codespaces**. Nupp on siinsamas juhendis. GitHubi enda lehel seda nuppu ei ole.

   [![Ava GitHub Codespacesis](https://github.com/codespaces/badge.svg)](https://codespaces.new/heiliaavola/eesti-ai_tehisaru_agendid_praktikas?quickstart=1)

   Kui nupp ei tööta, ava see link: [codespaces.new/heiliaavola/eesti-ai_tehisaru_agendid_praktikas](https://codespaces.new/heiliaavola/eesti-ai_tehisaru_agendid_praktikas?quickstart=1)

2. Kui GitHub küsib, logi sisse.
3. Vajuta rohelist nuppu **Create codespace**.
4. Oota 2–5 minutit, kuni avaneb tööala: vasakul on failid ja all on terminal. Tööala avaneb uuel vahekaardil. Hoia see juhend teisel vahekaardil lahti.
5. Kui GitHub küsib **Do you trust the authors of the files in this folder?**, vajuta **Trust Folder & Continue**. Need on töötoa failid ja need töötavad ainult sinu pilvekeskkonnas.

Terminal on aken, kuhu kirjutatakse käske. Kirjuta käsk ja vajuta Enter.

## 3. Käivita agent

1. Ava uus terminal: klõpsa terminali akna paremas ülanurgas **+** märki.
2. Kirjuta `opencode` ja vajuta Enter.
3. Avaneb OpenCode. Sisestusvälja all on kiri **Build** ja mudeli nimi, näiteks **Big Pickle**.

## 4. Proovi agenti

1. Kopeeri see lause:

   ```
   Loo fail tere.txt, kus on lause: Tere, agent. Seejärel näita käsuga ls kausta sisu.
   ```

2. Klõpsa OpenCode'i aknas hiire parema nupuga. Kui avaneb menüü, vali **Paste**. Kiirklahvid Ctrl+V ja Cmd+V ei pruugi siin töötada. Kui kleepimine ei õnnestu, kirjuta lause ise.
3. Vajuta Enter.
4. Agent loob faili. Seejärel küsib ta luba käsu `ls` käivitamiseks: ekraanile tuleb **Permission required**. Nii otsustad sina, milliseid käske agent sinu keskkonnas käivitab. Vajuta Enter: valitud on **Allow once** (luba üks kord).
5. Vasakul failide nimekirjas on nüüd fail `tere.txt`.

Kui ekraanile tuleb punane veateade, vaata allpool olevat tabelit.

## 5. Anna teada, et said valmis

Tee ekraanipilt, kus on näha fail `tere.txt` ja agendi vastus, ning saada see aadressile [tehisaru.tootuba@ut.ee](mailto:tehisaru.tootuba@ut.ee).

Sulge brauseri vahekaart. Keskkond peatub ise. Töötoa päeval klõpsa sama nuppu uuesti: sinu keskkond on alles.

## Kui midagi läks valesti

| Mis juhtus | Mida teha |
| --- | --- |
| Nuppu **Create codespace** pole | Logi GitHubi sisse ja kinnita oma e-posti aadress. |
| Terminali pole näha | Vali vasakult ülevalt menüü ☰ › **Terminal** › **New Terminal**. |
| Terminal ütleb `opencode: command not found` | Oota minut. Ava uus terminal **+** märgiga ja proovi uuesti. Kui see ei aita, kirjuta `bash .devcontainer/setup.sh`. |
| Punane kiri **Upstream request failed** või **Model is unavailable** | Mudel pole praegu saadaval. Vajuta Esc, kirjuta `/models` ja vali teine tasuta mudel, näiteks **Big Pickle** või mõni, mille nimes on **Free**. Seejärel saada lause uuesti. |
| Agent ei vasta | Oota minut ja proovi uuesti. Kui ei aita, vali `/models` abil teine mudel. |
| Sisestusvälja all on kiri **Shell** | Vajuta Esc. |
| Kleepimine ei tööta või tuleb teade **Unable to read from the browser's clipboard** | Kleebi hiire parema nupuga. Kui ka see ei tööta, kirjuta lause ise. |
| OpenCode soovitab käsku `/connect` | Seda pole vaja. Tasuta mudelid töötavad ilma. |
| Midagi muud | Tee ekraanipilt ja kirjuta aadressile [tehisaru.tootuba@ut.ee](mailto:tehisaru.tootuba@ut.ee). |

Keskkonda saab kontrollida ka käsuga `bash .devcontainer/kontroll.sh`.

## Kasulikud võtted

| Võte | Mida teeb |
| --- | --- |
| Tab | vahetab Plan- ja Build-režiimi |
| `/models` | valib mudeli |
| `/undo` | võtab agendi viimase sammu tagasi koos failimuudatustega |
| Esc | katkestab agendi töö |
| `/new` | alustab uut vestlust |
| `/exit` | sulgeb OpenCode'i |

## Hea teada

- Töötoa keskkond töötab GitHubi pilves. Agent ei pääse ligi sinu arvuti failidele. Kui keskkond läheb katki, kustuta see ja loo uus.
- Kasutame tasuta tehisaru mudeleid. Osa pakkujaid võib sisendeid mudeli parandamiseks kasutada. Ära kirjuta agendile isikuandmeid, paroole ega õppe- või tööalast konfidentsiaalset infot.
- GitHubi tasuta konto sisaldab kuus 60 tundi Codespacesi kasutust (kahe protsessorituumaga keskkond). Töötoaks piisab sellest. Makseviisi ei pea lisama. Ilma makseviisita kulusid ei teki: kui tasuta aeg saab otsa, peatub keskkond.
- Osaled oma seadme ja oma GitHubi kontoga.
- Pärast töötuba: kasutamata keskkond peatub 30 minuti pärast. Kui sa seda enam ei vaja, kustuta see lehel [github.com/codespaces](https://github.com/codespaces) (kolm punkti › **Delete**). Peatatud keskkonnad kustuvad ise 30 päeva pärast.
