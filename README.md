```
PRIM-002
IRREVOCULL
Irreversible judgment

STATUS: REGISTERED
REGISTRY: https://speedkit.eu
SNAPSHOT: https://speedkit.eu/REGISTRY_SNAPSHOT.json
```

Registered artifact. Identity governed by SPEEDKIT registry.

---

IRREVOCULL renders irreversible judgments.

It does not execute.
It does not repair.
It does not explain.

It observes output and terminates evaluation.

---

## Philosophy

IRREVOCULL exists to **end deliberation**.

It is designed for moments where:

* Evaluation must conclude
* Ambiguity is unacceptable
* Responsibility cannot be deferred

Once invoked, the result is binding.

---

## Behavior

* Consumes input **exclusively** via `stdin`
* Emits **exactly one** verdict:

  * `PASS` — complete, decisive output
  * `FAIL` — detected incompleteness or contradiction
  * `INVALID` — uncertainty, speculation, or misuse
* Exits immediately after judgment

The verdict is final.

No retries.
No flags.
No configuration.
No mitigation.

---

## Usage

IRREVOCULL is never run alone.
It must receive output.

```sh
<command-producing-output> | ./irrevocull.sh
```

### Example

```sh
echo "final answer" | ./irrevocull.sh
```

Output:

```text
PASS
```

```sh
echo "maybe later" | ./irrevocull.sh
```

Output:

```text
FAIL
```

Running without input:

```sh
./irrevocull.sh
```

Output:

```text
INVALID
```

---

## Contract

Once observed, the verdict stands.

Responsibility is absolute.
Blame is void.

If you want nuance, do not run it.

---

## Responsibility Boundary

This software is provided under the MIT License.

The MIT License permits use, copying, modification, and redistribution of the code, but it does not provide assurance, certification, audit defense, operational guarantees, or liability coverage.

Use of this software in environments where failure, compliance, legal exposure, or irreversible decisions matter requires an accountable party.

The original maintainer is available for assurance, adaptation, and responsibility when such accountability is required.

Contact: contact@speedkit.eu

Authoritative signed records are issued separately and are not produced by the software.
