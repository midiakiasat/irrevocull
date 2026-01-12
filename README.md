# IRREVOCULL

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
