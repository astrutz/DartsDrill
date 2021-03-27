import 'package:dartsdrill/models/ThrowSet.dart';

class Finishes {
  final List<Finish> _finishes = [];
  Finishes() {
    _finishes.add(Finish(2, [ThrowSet('D1', null, null)]));
    _finishes.add(Finish(3, [ThrowSet('S1', 'D1', null)]));
    _finishes.add(Finish(4, [ThrowSet('D2', null, null)]));
    _finishes.add(Finish(5, [ThrowSet('S1', 'D2', null), ThrowSet('S3', 'D1', null)]));
    _finishes.add(Finish(6, [ThrowSet('D3', null, null), ThrowSet('S2', 'D2', null)]));
    _finishes.add(Finish(7, [ThrowSet('S3', 'D2', null), ThrowSet('S5', 'D1', null)]));
    _finishes.add(Finish(8, [ThrowSet('D4', null, null)]));
    _finishes.add(Finish(9, [ThrowSet('D1', 'D4', null), ThrowSet('S5', 'D2', null)]));
    _finishes.add(Finish(10, [ThrowSet('D5', null, null), ThrowSet('S2', 'D4', null)]));
    _finishes.add(Finish(11, [ThrowSet('S3', 'D4', null)]));
    _finishes.add(Finish(12, [ThrowSet('D6', null, null)]));
    _finishes.add(Finish(13, [ThrowSet('S5', 'D4', null)]));
    _finishes.add(Finish(14, [ThrowSet('D7', null, null), ThrowSet('S6', 'D4', null), ThrowSet('S10', 'D2', null)]));
    _finishes.add(Finish(15, [ThrowSet('S7', 'D4', null)]));
    _finishes.add(Finish(16, [ThrowSet('D8', null, null)]));
    _finishes.add(Finish(17, [ThrowSet('S1', 'D8', null), ThrowSet('S9', 'D4', null)]));
    _finishes.add(Finish(18, [ThrowSet('D9', null, null), ThrowSet('S2', 'D8', null), ThrowSet('S10', 'D4', null)]));
    _finishes.add(Finish(19, [ThrowSet('S3', 'D8', null), ThrowSet('S11', 'D4', null)]));
    _finishes.add(Finish(20, [ThrowSet('D10', null, null)]));
    _finishes.add(Finish(21, [ThrowSet('S5', 'D8', null), ThrowSet('S13', 'D4', null)]));
    _finishes.add(Finish(22, [ThrowSet('D11', null, null), ThrowSet('S6', 'D8', null)]));
    _finishes.add(Finish(23, [ThrowSet('S7', 'D8', null)]));
    _finishes.add(Finish(24, [ThrowSet('D12', null, null)]));
    _finishes.add(Finish(25, [ThrowSet('S9', 'D8', null), ThrowSet('S1', 'D12', null)]));
    _finishes.add(Finish(26, [ThrowSet('D13', null, null), ThrowSet('S10', 'D8', null)]));
    _finishes.add(Finish(27, [ThrowSet('S11', 'D8', null), ThrowSet('S19', 'D4', null), ThrowSet('S7', 'D10', null)]));
    _finishes.add(Finish(28, [ThrowSet('D14', null, null)]));
    _finishes.add(Finish(29, [ThrowSet('S13', 'D8', null)]));
    _finishes.add(Finish(30, [ThrowSet('D15', null, null)]));
    _finishes.add(Finish(31, [ThrowSet('S15', 'D8', null), ThrowSet('S7', 'D12', null)]));
    _finishes.add(Finish(32, [ThrowSet('D16', null, null)]));
    _finishes.add(Finish(33, [ThrowSet('S1', 'D16', null), ThrowSet('S17', 'D8', null)]));
    _finishes.add(Finish(34, [ThrowSet('D17', null, null)]));
    _finishes.add(Finish(35, [ThrowSet('S3', 'D16', null), ThrowSet('S11', 'D12', null)]));
    _finishes.add(Finish(36, [ThrowSet('D18', null, null)]));
    _finishes.add(Finish(37, [ThrowSet('S5', 'D16', null), ThrowSet('S1', 'D18', null)]));
    _finishes.add(Finish(38, [ThrowSet('D19', null, null), ThrowSet('S6', 'D16', null)]));
    _finishes.add(Finish(39, [ThrowSet('S7', 'D16', null), ThrowSet('S3', 'D18', null)]));
    _finishes.add(Finish(40, [ThrowSet('D20', null, null)]));
    _finishes.add(Finish(41, [ThrowSet('S1', 'D20', null), ThrowSet('S9', 'D16', null), ThrowSet('S5', 'D18', null)]));
    _finishes.add(Finish(42, [ThrowSet('S2', 'D20', null), ThrowSet('S10', 'D16', null), ThrowSet('S6', 'D18', null)]));
    _finishes.add(Finish(43, [ThrowSet('S3', 'D20', null), ThrowSet('S11', 'D16', null), ThrowSet('S7', 'D18', null)]));
    _finishes.add(Finish(44, [ThrowSet('S4', 'D20', null), ThrowSet('S12', 'D16', null), ThrowSet('S8', 'D18', null)]));
    _finishes.add(Finish(45, [ThrowSet('S5', 'D20', null), ThrowSet('S13', 'D16', null), ThrowSet('S9', 'D18', null)]));
    _finishes.add(Finish(46, [ThrowSet('S6', 'D20', null), ThrowSet('S14', 'D16', null), ThrowSet('S10', 'D18', null)]));
    _finishes.add(Finish(47, [ThrowSet('S7', 'D20', null), ThrowSet('S15', 'D16', null), ThrowSet('S11', 'D18', null)]));
    _finishes.add(Finish(48, [ThrowSet('S8', 'D20', null), ThrowSet('S16', 'D16', null), ThrowSet('S12', 'D18', null)]));
    _finishes.add(Finish(49, [ThrowSet('S9', 'D20', null), ThrowSet('S17', 'D16', null), ThrowSet('S13', 'D18', null)]));
    _finishes.add(Finish(50, [ThrowSet('S10', 'D20', null), ThrowSet('S18', 'D16', null), ThrowSet('BULL', null, null)]));
    _finishes.add(Finish(51, [ThrowSet('S11', 'D20', null), ThrowSet('S19', 'D16', null), ThrowSet('S15', 'D18', null)]));
    _finishes.add(Finish(52, [ThrowSet('S12', 'D20', null), ThrowSet('S20', 'D16', null), ThrowSet('S16', 'D18', null)]));
    _finishes.add(Finish(53, [ThrowSet('S13', 'D20', null), ThrowSet('S17', 'D18', null)]));
    _finishes.add(Finish(54, [ThrowSet('S14', 'D20', null), ThrowSet('S18', 'D18', null)]));
    _finishes.add(Finish(55, [ThrowSet('S15', 'D20', null), ThrowSet('S19', 'D18', null)]));
    _finishes.add(Finish(56, [ThrowSet('S16', 'D20', null), ThrowSet('S20', 'D18', null)]));
    _finishes.add(Finish(57, [ThrowSet('S17', 'D20', null)]));
    _finishes.add(Finish(58, [ThrowSet('S18', 'D20', null)]));
    _finishes.add(Finish(59, [ThrowSet('S19', 'D20', null)]));
    _finishes.add(Finish(60, [ThrowSet('S20', 'D20', null)]));
    _finishes.add(Finish(61, [ThrowSet('25', 'D18', null), ThrowSet('T15', 'D8', null), ThrowSet('T7', 'D20', null)]));
    _finishes.add(Finish(62, [ThrowSet('T10', 'D16', null), ThrowSet('T12', 'D13', null), ThrowSet('S10', 'S12', 'D20')]));
    _finishes.add(Finish(63, [ThrowSet('T13', 'D12', null), ThrowSet('T9', 'D18', null), ThrowSet('S13', 'S18', 'D16')]));
    _finishes.add(Finish(64, [ThrowSet('T16', 'D8', null), ThrowSet('T8', 'D20', null), ThrowSet('S16', 'S16', 'D16')]));
    _finishes.add(Finish(65, [ThrowSet('25', 'D20', null), ThrowSet('T11', 'D16', null), ThrowSet('S11', 'S14', 'D20')]));
    _finishes.add(Finish(66, [ThrowSet('T10', 'D18', null), ThrowSet('BULL', 'D8', null), ThrowSet('S10', 'S16', 'D20')]));
    _finishes.add(Finish(67, [ThrowSet('T17', 'D8', null), ThrowSet('T9', 'D20', null), ThrowSet('S17', 'S18', 'D16')]));
    _finishes.add(Finish(68, [ThrowSet('T20', 'D4', null), ThrowSet('T16', 'D10', null), ThrowSet('S20', 'S16', 'D16')]));
    _finishes.add(Finish(69, [ThrowSet('T19', 'D6', null), ThrowSet('T11', 'D18', null), ThrowSet('S19', 'S18', 'D16')]));
    _finishes.add(Finish(70, [ThrowSet('T18', 'D8', null), ThrowSet('T10', 'D20', null), ThrowSet('S18', 'S12', 'D20')]));
    _finishes.add(Finish(71, [ThrowSet('T13', 'D16', null), ThrowSet('T17', 'D10', null), ThrowSet('S13', 'S18', 'D20')]));
    _finishes.add(Finish(72, [ThrowSet('T16', 'D12', null), ThrowSet('T20', 'D6', null), ThrowSet('S16', 'S16', 'D20')]));
    _finishes.add(Finish(73, [ThrowSet('T19', 'D8', null), ThrowSet('T11', 'D20', null), ThrowSet('S19', 'S14', 'D20')]));
    _finishes.add(Finish(74, [ThrowSet('T14', 'D16', null), ThrowSet('T18', 'D10', null), ThrowSet('S14', 'S20', 'D20')]));
    _finishes.add(Finish(75, [ThrowSet('T17', 'D18', null), ThrowSet('25', 'BULL', null), ThrowSet('S17', 'S18', 'D20')]));
    _finishes.add(Finish(76, [ThrowSet('T20', 'D8', null), ThrowSet('T16', 'D14', null), ThrowSet('S20', 'S16', 'D20')]));
    _finishes.add(Finish(77, [ThrowSet('T19', 'D10', null), ThrowSet('T15', 'D16', null), ThrowSet('S19', 'S18', 'D20')]));
    _finishes.add(Finish(78, [ThrowSet('T18', 'D12', null), ThrowSet('T14', 'D18', null), ThrowSet('S18', 'S20', 'D20')]));
    _finishes.add(Finish(79, [ThrowSet('T19', 'D11', null), ThrowSet('T13', 'D20', null), ThrowSet('S19', 'S20', 'D20')]));
    _finishes.add(Finish(80, [ThrowSet('T20', 'D10', null), ThrowSet('T16', 'D16', null), ThrowSet('S20', 'S20', 'D20')]));
    _finishes.add(Finish(81, [ThrowSet('T19', 'D12', null), ThrowSet('T15', 'D18', null), ThrowSet('S19', 'S12', 'BULL')]));
    _finishes.add(Finish(82, [ThrowSet('BULL', 'D16', null), ThrowSet('T14', 'D20', null), ThrowSet('25', 'S17', 'D16')]));
    _finishes.add(Finish(83, [ThrowSet('T17', 'D16', null), ThrowSet('S17', 'S16', 'BULL')]));
    _finishes.add(Finish(84, [ThrowSet('T20', 'D12', null), ThrowSet('T16', 'D18', null), ThrowSet('S20', 'S14', 'BULL')]));
    _finishes.add(Finish(85, [ThrowSet('T15', 'D20', null), ThrowSet('T19', 'D14', null), ThrowSet('S15', 'S20', 'BULL')]));
    _finishes.add(Finish(86, [ThrowSet('T18', 'D16', null), ThrowSet('BULL', 'D18', null), ThrowSet('S18', 'S18', 'BULL')]));
    _finishes.add(Finish(87, [ThrowSet('T17', 'D18', null), ThrowSet('S17', 'S20', 'BULL')]));
    _finishes.add(Finish(88, [ThrowSet('T20', 'D14', null), ThrowSet('T16', 'D20', null), ThrowSet('S20', 'S18', 'BULL')]));
    _finishes.add(Finish(89, [ThrowSet('T19', 'D16', null), ThrowSet('S19', 'S20', 'BULL')]));
    _finishes.add(Finish(90, [ThrowSet('T20', 'D15', null), ThrowSet('T18', 'D18', null), ThrowSet('S20', 'S20', 'BULL')]));
    _finishes.add(Finish(91, [ThrowSet('BULL', 'S9', 'D16'), ThrowSet('T17', 'D20', null), ThrowSet('25', 'S16', 'BULL')]));
    _finishes.add(Finish(92, [ThrowSet('BULL', 'S10', 'D16'), ThrowSet('T20', 'D16', null), ThrowSet('25', 'S17', 'BULL')]));
    _finishes.add(Finish(93, [ThrowSet('BULL', 'S11', 'D16'), ThrowSet('T19', 'D18', null), ThrowSet('25', 'S18', 'BULL')]));
    _finishes.add(Finish(94, [ThrowSet('BULL', 'S12', 'D16'), ThrowSet('T18', 'D20', null), ThrowSet('25', 'S19', 'BULL')]));
    _finishes.add(Finish(95, [ThrowSet('BULL', 'S13', 'D16'), ThrowSet('T19', 'D19', null), ThrowSet('25', 'S20', 'BULL')]));
    _finishes.add(Finish(96, [ThrowSet('T20', 'D18', null), ThrowSet('S20', 'T20', 'D8')]));
    _finishes.add(Finish(97, [ThrowSet('T19', 'D20', null), ThrowSet('S19', 'T18', 'D12'), ThrowSet('S19', 'T14', 'D18')]));
    _finishes.add(Finish(98, [ThrowSet('T20', 'D18', null), ThrowSet('S20', 'T18', 'D12'), ThrowSet('S20', 'T14', 'D18')]));
    _finishes.add(Finish(99, [ThrowSet('T19', 'S10', 'D16'), ThrowSet('T19', 'S2', 'D20'), ThrowSet('S19', 'D20', 'D20')]));
    _finishes.add(Finish(100, [ThrowSet('T20', 'D20', null), ThrowSet('S20', 'T20', 'D10'), ThrowSet('S20', 'D20', 'D20')]));
    _finishes.add(Finish(101, [ThrowSet('T20', 'S1', 'D20'), ThrowSet('T20', 'S9', 'D16'), ThrowSet('S20', 'T19', 'D12'), ThrowSet('T17', 'BULL', null)]));
    _finishes.add(Finish(102, [ThrowSet('T20', 'S2', 'D20'), ThrowSet('T20', 'S10', 'D16'), ThrowSet('S20', 'BULL', 'D16')]));
    _finishes.add(Finish(103, [ThrowSet('T20', 'S3', 'D20'), ThrowSet('T20', 'S11', 'D16'), ThrowSet('S20', 'T17', 'D16')]));
    _finishes.add(Finish(104, [ThrowSet('T20', 'S4', 'D20'), ThrowSet('T20', 'S12', 'D16'), ThrowSet('S20', 'T20', 'D12'), ThrowSet('T18', 'BULL', null)]));
    _finishes.add(Finish(105, [ThrowSet('T20', 'S5', 'D20'), ThrowSet('T20', 'S13', 'D16'), ThrowSet('S20', 'T15', 'D20')]));
    _finishes.add(Finish(106, [ThrowSet('T20', 'S6', 'D20'), ThrowSet('T20', 'S14', 'D16'), ThrowSet('S20', 'T18', 'D16')]));
    _finishes.add(Finish(107, [ThrowSet('T20', 'S7', 'D20'), ThrowSet('T20', 'S15', 'D16'), ThrowSet('S20', 'T17', 'D18'), ThrowSet('T19', 'BULL', null)]));
    _finishes.add(Finish(108, [ThrowSet('T20', 'S8', 'D20'), ThrowSet('T20', 'S16', 'D16'), ThrowSet('S20', 'T20', 'D14')]));
    _finishes.add(Finish(109, [ThrowSet('T20', 'S9', 'D20'), ThrowSet('T20', 'S17', 'D16'), ThrowSet('S20', 'T19', 'D16')]));
    _finishes.add(Finish(110, [ThrowSet('T20', 'S10', 'D20'), ThrowSet('T20', 'S18', 'D16'), ThrowSet('S20', 'T18', 'D18'), ThrowSet('T20', 'BULL', null)]));
    _finishes.add(Finish(111, [ThrowSet('T20', 'S11', 'D20'), ThrowSet('T20', 'S15', 'D18'), ThrowSet('S20', 'T17', 'D20')]));
    _finishes.add(Finish(112, [ThrowSet('T20', 'S12', 'D20'), ThrowSet('T20', 'S16', 'D18'), ThrowSet('S20', 'T20', 'D16')]));
    _finishes.add(Finish(113, [ThrowSet('T20', 'S13', 'D20'), ThrowSet('T20', 'S17', 'D18'), ThrowSet('S20', 'T19', 'D18')]));
    _finishes.add(Finish(114, [ThrowSet('T20', 'S14', 'D20'), ThrowSet('T20', 'S18', 'D18'), ThrowSet('S20', 'T18', 'D20')]));
    _finishes.add(Finish(115, [ThrowSet('T19', 'S18', 'D20'), ThrowSet('T20', 'S19', 'D18'), ThrowSet('S19', 'T20', 'D18')]));
    _finishes.add(Finish(116, [ThrowSet('T20', 'S16', 'D20'), ThrowSet('T20', 'S20', 'D18'), ThrowSet('S20', 'T20', 'D18')]));
    _finishes.add(Finish(117, [ThrowSet('T20', 'S17', 'D20'), ThrowSet('S20', 'T19', 'D20'), ThrowSet('S17', 'T20', 'D20')]));
    _finishes.add(Finish(118, [ThrowSet('T20', 'S18', 'D20'), ThrowSet('S20', 'T20', 'D19'), ThrowSet('S18', 'T20', 'D20')]));
    _finishes.add(Finish(119, [ThrowSet('T19', 'T10', 'D16'), ThrowSet('T19', 'S12', 'BULL'), ThrowSet('S19', 'T20', 'D20')]));
    _finishes.add(Finish(120, [ThrowSet('T20', 'S20', 'D20'), ThrowSet('S20', 'BULL', 'BULL'), ThrowSet('S20', 'T20', 'D20')]));
    _finishes.add(Finish(121, [ThrowSet('T20', 'T11', 'D14'), ThrowSet('T20', 'S11', 'BULL'), ThrowSet('S20', 'T17', 'BULL')]));
    _finishes.add(Finish(122, [ThrowSet('T18', 'T18', 'D7'), ThrowSet('T18', 'S18', 'BULL'), ThrowSet('S18', 'T18', 'BULL')]));
    _finishes.add(Finish(123, [ThrowSet('T19', 'T16', 'D9'), ThrowSet('T19', 'S16', 'BULL'), ThrowSet('S19', 'T18', 'BULL')]));
    _finishes.add(Finish(124, [ThrowSet('T20', 'T14', 'D11'), ThrowSet('T20', 'S14', 'BULL'), ThrowSet('S20', 'T18', 'BULL')]));
    _finishes.add(Finish(125, [ThrowSet('25', 'T20', 'D20'), ThrowSet('BULL', '25', 'BULL'), ThrowSet('BULL', 'T17', 'D12')]));
    _finishes.add(Finish(126, [ThrowSet('T19', 'T19', 'D6'), ThrowSet('T19', 'S19', 'BULL'), ThrowSet('S19', 'T19', 'BULL')]));
    _finishes.add(Finish(127, [ThrowSet('T20', 'T17', 'D8'), ThrowSet('T20', 'S17', 'BULL'), ThrowSet('S20', 'T19', 'BULL')]));
    _finishes.add(Finish(128, [ThrowSet('T18', 'T14', 'D16'), ThrowSet('S18', 'T20', 'BULL'), ThrowSet('T20', 'T20', 'D4')]));
    _finishes.add(Finish(129, [ThrowSet('T19', 'T16', 'D12'), ThrowSet('T19', 'D18', 'D18'), ThrowSet('S19', 'T20', 'BULL')]));
    _finishes.add(Finish(130, [ThrowSet('T20', 'S20', 'BULL'), ThrowSet('T20', 'T20', 'D5'), ThrowSet('T20', 'T18', 'D8')]));
    _finishes.add(Finish(131, [ThrowSet('T20', 'T13', 'D16'), ThrowSet('T19', 'T18', 'D10'), ThrowSet('T17', 'D20', 'D20')]));
    _finishes.add(Finish(132, [ThrowSet('BULL', 'BULL', 'D16'), ThrowSet('25', 'T19', 'BULL'), ThrowSet('T20', 'T16', 'D12')]));
    _finishes.add(Finish(133, [ThrowSet('T20', 'T19', 'D8'), ThrowSet('T19', 'T16', 'D14'), ThrowSet('T17', 'BULL', 'D16')]));
    _finishes.add(Finish(134, [ThrowSet('T20', 'T14', 'D16'), ThrowSet('T19', 'T19', 'D10'), ThrowSet('T17', 'T17', 'D16')]));
    _finishes.add(Finish(135, [ThrowSet('BULL', 'T15', 'D20'), ThrowSet('25', 'T20', 'BULL'), ThrowSet('T20', 'T17', 'D12')]));
    _finishes.add(Finish(136, [ThrowSet('T20', 'T20', 'D8'), ThrowSet('T16', 'T16', 'D20'), ThrowSet('T20', 'D19', 'D19')]));
    _finishes.add(Finish(137, [ThrowSet('T20', 'T19', 'D10'), ThrowSet('T20', 'T16', 'D16'), ThrowSet('T19', 'D20', 'D20')]));
    _finishes.add(Finish(138, [ThrowSet('T20', 'T18', 'D12'), ThrowSet('T19', 'T19', 'D12'), ThrowSet('T17', 'T17', 'D18')]));
    _finishes.add(Finish(139, [ThrowSet('T20', 'T13', 'D20'), ThrowSet('T19', 'BULL', 'D16'), ThrowSet('T18', 'T15', 'D20')]));
    _finishes.add(Finish(140, [ThrowSet('T20', 'T20', 'D10'), ThrowSet('T18', 'T18', 'D16'), ThrowSet('T20', 'D20', 'D20')]));
    _finishes.add(Finish(141, [ThrowSet('T20', 'T19', 'D12'), ThrowSet('T20', 'T15', 'D18'), ThrowSet('T17', 'T18', 'D18')]));
    _finishes.add(Finish(142, [ThrowSet('T20', 'BULL', 'D16'), ThrowSet('T20', 'T20', 'D11'), ThrowSet('T20', 'T14', 'D20')]));
    _finishes.add(Finish(143, [ThrowSet('T20', 'T17', 'D16'), ThrowSet('T19', 'T18', 'D16'), ThrowSet('T19', 'BULL', 'D18')]));
    _finishes.add(Finish(144, [ThrowSet('T20', 'T20', 'D12'), ThrowSet('T18', 'T18', 'D18'), ThrowSet('T20', 'T16', 'D18')]));
    _finishes.add(Finish(145, [ThrowSet('T20', 'T15', 'D20'), ThrowSet('T19', 'T16', 'D20'), ThrowSet('T20', 'T19', 'D14')]));
    _finishes.add(Finish(146, [ThrowSet('T20', 'T18', 'D16'), ThrowSet('T19', 'T19', 'D16'), ThrowSet('T20', 'T20', 'D13')]));
    _finishes.add(Finish(147, [ThrowSet('T20', 'T17', 'D18'), ThrowSet('T19', 'T18', 'D18')]));
    _finishes.add(Finish(148, [ThrowSet('T20', 'T20', 'D14'), ThrowSet('T18', 'T18', 'D20'), ThrowSet('T16', 'BULL', 'BULL')]));
    _finishes.add(Finish(149, [ThrowSet('T20', 'T19', 'D16')]));
    _finishes.add(Finish(150, [ThrowSet('T20', 'T18', 'D18'), ThrowSet('T19', 'T19', 'D18'), ThrowSet('T20', 'BULL', 'D20')]));
    _finishes.add(Finish(151, [ThrowSet('T20', 'T17', 'D20'), ThrowSet('T17', 'BULL', 'BULL')]));
    _finishes.add(Finish(152, [ThrowSet('T20', 'T20', 'D16')]));
    _finishes.add(Finish(153, [ThrowSet('T20', 'T19', 'D18')]));
    _finishes.add(Finish(154, [ThrowSet('T20', 'T18', 'D20'), ThrowSet('T19', 'T19', 'D20'), ThrowSet('T18', 'BULL', 'BULL')]));
    _finishes.add(Finish(155, [ThrowSet('T20', 'T19', 'D19'), ThrowSet('T20', 'T15', 'BULL')]));
    _finishes.add(Finish(156, [ThrowSet('T20', 'T20', 'D18')]));
    _finishes.add(Finish(157, [ThrowSet('T20', 'T19', 'D20'), ThrowSet('T19', 'BULL', 'BULL')]));
    _finishes.add(Finish(158, [ThrowSet('T20', 'T20', 'D19'), ThrowSet('T20', 'T16', 'BULL')]));
    _finishes.add(Finish(159, []));
    _finishes.add(Finish(160, [ThrowSet('T20', 'T20', 'D20'), ThrowSet('T20', 'BULL', 'BULL')]));
    _finishes.add(Finish(161, [ThrowSet('T20', 'T17', 'BULL'), ThrowSet('T19', 'T18', 'BULL')]));
    _finishes.add(Finish(162, []));
    _finishes.add(Finish(163, []));
    _finishes.add(Finish(164, [ThrowSet('T20', 'T18', 'BULL'), ThrowSet('T19', 'T19', 'BULL')]));
    _finishes.add(Finish(165, []));
    _finishes.add(Finish(166, []));
    _finishes.add(Finish(167, [ThrowSet('T20', 'T19', 'BULL')]));
    _finishes.add(Finish(168, []));
    _finishes.add(Finish(169, []));
    _finishes.add(Finish(170, [ThrowSet('T20', 'T20', 'BULL')]));
  }

  Finish getByValue(int value) {
    if (value < 2 || value > 170) {
      throw FinishOutOfBoundException('Finish with value $value doesn\'t exist');
    }
    return _finishes.firstWhere((element) => element.value == value);
  }
}

class Finish {
  int _value;
  int _minimumDarts = 3;
  List<ThrowSet> _ways;

  Finish(this._value, this._ways) {
    _ways.forEach((way) {
      if (way.getThrownDarts() < _minimumDarts) {
        _minimumDarts = way.getThrownDarts();
      }
    });
  }

  int get value => _value;
  int get minimumDarts => _minimumDarts;
  List<ThrowSet> get ways => _ways;
}

class FinishOutOfBoundException implements Exception {
  late String _message;

  FinishOutOfBoundException([String message = 'Invalid value']) {
    this._message = message;
  }

  @override
  String toString() {
    return _message;
  }
}
