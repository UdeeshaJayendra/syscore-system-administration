# High CPU Process Troubleshooting

## Scenario

A controlled high-CPU condition was simulated by running a Python process containing an infinite loop.

## 1. Detect the Problem

The test process was identified as PID `23558`.

Process-specific monitoring showed:

```text
PID 23558
CPU 100%
```

A CPU-sorted process listing also showed the test process using the highest CPU percentage.

## 2. Investigate the Process

The process was inspected using:

```bash
ps -p 23558 -o pid,ppid,cmd,%cpu,%mem
```

The process was consuming approximately 100% CPU.

## 3. Diagnosis

The high CPU usage was caused by the intentionally created Python infinite-loop process:

```text
python3 -c 'while True: pass'
```

## 4. Resolution

The problematic process was terminated:

```bash
kill 23558
```

## 5. Verification

The process was checked after termination:

```bash
ps -p 23558 -o pid,stat,cmd
```

No process entry remained.

The test process was also searched for:

```bash
pgrep -af "while True: pass"
```

No matching process was found.

## Troubleshooting Process

```text
Identify High CPU Process
        ↓
Check PID and CPU Usage
        ↓
Identify Process Cause
        ↓
Terminate Problematic Process
        ↓
Verify Process Removal
```

