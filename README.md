# IRREVOCULL

IRREVOCULL renders irreversible judgments.

It does not execute.  
It does not repair.  
It does not explain.

It observes output and terminates evaluation.

---

## Behavior

- Consumes input **exclusively** via `stdin`
- Emits **exactly one** verdict:
  - `PASS`
  - `FAIL`
  - `INVALID`
- Exits immediately after judgment

The verdict is final.

No retries.  
No flags.  
No configuration.  

---

## Usage

```sh
<command-producing-output> | ./irrevocull.sh
